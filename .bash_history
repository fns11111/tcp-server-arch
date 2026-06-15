# 1. Исходный образ
FROM archlinux:latest
# 2. Метка
LABEL project="TCP Server on Arch"
# 3. Установка Qt6 и компилятора
#    (make нужен для сборки, qt6-base уже содержит qmake6)
RUN pacman -Syu --noconfirm qt6-base gcc make &&     pacman -Scc --noconfirm
# 4. Копируем файлы проекта в /build
WORKDIR /build
COPY . /build
# 5. Компиляция в бинарник arch_server
#    Имя задаётся через TARGET в .pro-файле
RUN qmake6 && make
# 6. Порт и автозапуск
EXPOSE 1234
CMD ["./arch_server"]
docker run archlinux
# 1. Исходный образ
FROM archlinux:latest
# 2. Метка
LABEL project="TCP Server on Arch"
# 3. Установка Qt6 и компилятора
#    (make нужен для сборки, qt6-base уже содержит qmake6)
RUN pacman -Syu --noconfirm qt6-base gcc make &&     pacman -Scc --noconfirm
# 4. Копируем файлы проекта в /build
WORKDIR /build
COPY . /build
# 5. Компиляция в бинарник arch_server
#    Имя задаётся через TARGET в .pro-файле
RUN qmake6 && make
# 6. Порт и автозапуск
EXPOSE 1234
CMD ["./arch_server"]
# 1. Сборка образа
docker build -t your_username/tcp-server-arch:latest .
# 2. Запуск контейнера
docker run -d --name tcp-server -p 1234:1234 your_username/tcp-server-arch:latest
# 3. Проверка логов
docker logs tcp-server
# 4. Отправка на Docker Hub
docker login
docker push your_username/tcp-server-arch:latest
# 5. Добавление ссылки в Git
echo "docker.io/your_username/tcp-server-arch:latest" > DOCKERHUB_LINK.txt
git add .
git commit -m "Add Docker TCP Server image"
git push origin main
# 1. Сборка образа
docker build -t your_username/tcp-server-arch:latest .
# 2. Запуск контейнера
docker run -d --name tcp-server -p 1234:1234 your_username/tcp-server-arch:latest
# 3. Проверка логов
docker logs tcp-server
# 4. Отправка на Docker Hub
docker login
docker push your_username/tcp-server-arch:latest
# 5. Добавление ссылки в Git
echo "docker.io/your_username/tcp-server-arch:latest" > DOCKERHUB_LINK.txt
git ad
docker build -t your_username/tcp-server-arch:latest .
turtl@FNSPC:~$ docker build -t your_username/tcp-server-arch:latest .
The command 'docker' could not be found in this WSL 2 distro.
We recommend to activate the WSL integration in Docker Desktop settings.
For details about using Docker Desktop with WSL 2, visit:
https://docs.docker.com/go/w
docker build -t your_username/tcp-server-arch:latest .
docker build -t aasofroneev/tcp-server-arch:latest .
find /mnt/c/Users -name "Dockerfile" 2>/dev/null
docker build -t your_username/tcp-server-arch:latest .
docker build -t aasofroneev/tcp-server-arch:latest
docker build -t aasofroneev/tcp-server-arch:latest .
pwd
ls -la
find ~ -name "*.cpp" -o -name "CMakeLists.txt" 2>/dev/null | head -20
cp /mnt/c/Users/turtl/.docker/cagent/working_directories/*/default/Dockerfile ~/Dockerfile
cp "C:\Users\turtl\.docker\cagent\working_directories\https-3a-2f-2fai-backend-service-docker-com-2fproxy-2fgordon-agent-3fgordontag-3dv8-26desktopversion-3d4-77-0-26origin-3ddesktop\8f4c95e3-24e7-441e-8137-9e7fc3c38172\default\Dockerfile"
find ~ -type f \( -name "*.cpp" -o -name "*.h" -o -name "CMakeLists.txt" -o -name "*.pro" \) 2>/dev/null | head -30
docker build -t aasofroneev/tcp-server-arch:latest .
docker images | grep tcp-server-arch
cd ~/tcp-server
ls -la
ls -la ~
ls -la ~/*.cpp ~/*.txt ~/*akefile
cp -r /mnt/c/Users/turtl/tcp-server/* ~/
ls -la ~
cd ~
docker build -t aasofroneev/tcp-server-arch:latest .
docker ps
docker logs tcp-server
docker run -it aasofroneev/tcp-server-arch:latest
