#! /bin/bash

sudo docker-compose build
sudo docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
sudo docker-compose push