#! /bin/bash
docker-compose build
docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
docker-compose push