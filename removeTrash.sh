#!/bin/bash

echo "Stopping Jenkins and Gitlab..."
docker compose -f infra/docker-compose.yml down
# sleep 15

echo "Deleting containers and volumes..."
docker container rm $(cat infra/docker-compose.yml | yq '.services.*.container_name' | sed 's/^/ /g' | tr -d '\n') > /dev/null 2>&1 || true
docker volume rm $(cat infra/docker-compose.yml | yq '.volumes' | sed 's/^/infra_/g' | sed 's/:/ /g' | tr -d '\n') > /dev/null 2>&1 || true

echo "Containers and volumes removed"
docker container ls -aq
docker volume ls -q