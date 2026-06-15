FROM archlinux:latest

# Обновить пакеты и установить необходимые инструменты
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm qt6-base gcc make cmake git && \
    pacman -Sc --noconfirm

# Добавить метку
LABEL project="TCP Server on Arch"

# Создать директорию для проекта
WORKDIR /build

# Скопировать файлы проекта
COPY . .

# Скомпилировать проект
RUN cmake . && make

# Открыть порт
EXPOSE 1234

# Запустить сервер
ENTRYPOINT ["./arch_server"]
