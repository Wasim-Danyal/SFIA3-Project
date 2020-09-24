#! /bin/bash

docker system prune
docker rmi $(docker images -a -q)
export SPRING_DATASOURCE_URI="${SPRING_DATASOURCE_URI}"
export SPRING_DATASOURCE_USERNAME="${SPRING_DATASOURCE_USERNAME}"
export SPRING_DATASOURCE_PASSWORD="${SPRING_DATASOURCE_PASSWORD}"
ls
sleep 10
docker-compose build
docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
docker-compose push