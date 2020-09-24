#! /bin/bash

docker system prune
docker rmi $(docker images -a -q)
export SPRING_DATASOURCE_URI="${SPRING_DATASOURCE_URI}"
export SPRING_DATASOURCE_USERNAME="${SPRING_DATASOURCE_USERNAME}"
export SPRING_DATASOURCE_PASSWORD="${SPRING_DATASOURCE_PASSWORD}"
ls
sleep 10
docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
cd back-end
docker build -t rwright1992/backend:latest .
docker push rwright1992/backend:latest
cd ..
cd front-end
docker build -t rwright1992/frontend:latest .
docker push rwright1992/frontend:latest
cd ..
cd nginx
docker build -t rwright1992/nginx:latest .
docker push rwright1992/nginx:latest
cd ..