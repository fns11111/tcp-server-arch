#include <QCoreApplication>
#include <QTcpServer>
#include <QTcpSocket>
#include <QDebug>
#include <QDateTime>

class TcpServer : public QObject
{
    Q_OBJECT

public:
    TcpServer(QObject *parent = nullptr) : QObject(parent)
    {
        server = new QTcpServer(this);
        connect(server, &QTcpServer::newConnection, this, &TcpServer::onNewConnection);

        if (!server->listen(QHostAddress::Any, 1234)) {
            qDebug() << "Failed to start server on port 1234";
            QCoreApplication::quit();
        }
        qDebug() << "Server started on port 1234. Waiting for connections...";
    }

private slots:
    void onNewConnection()
    {
        QTcpSocket *socket = server->nextPendingConnection();
        QString clientInfo = QString("New client connected from %1:%2 at %3")
            .arg(socket->peerAddress().toString())
            .arg(socket->peerPort())
            .arg(QDateTime::currentDateTime().toString("yyyy-MM-dd hh:mm:ss"));
        
        qDebug() << clientInfo;

        QString response = "Welcome to TCP Server!\nYour IP: " + socket->peerAddress().toString() + "\n";
        socket->write(response.toUtf8());
        socket->flush();

        connect(socket, &QTcpSocket::readyRead, this, [this, socket]() {
            QString data = QString::fromUtf8(socket->readAll());
            qDebug() << "Received:" << data;
            socket->write("Echo: " + data.toUtf8());
            socket->flush();
        });

        connect(socket, &QTcpSocket::disconnected, socket, &QObject::deleteLater);
    }

private:
    QTcpServer *server;
};

#include "main.moc"

int main(int argc, char *argv[])
{
    QCoreApplication app(argc, argv);
    TcpServer server;
    return app.exec();
}
