#!/bin/bash

echo "Stopping Jenkins and Gitlab..."
docker compose -f infra/docker-compose.yml down
sleep 15

echo "Deleting containers and volumes..."
docker rmi gitlab-server jenkins-controller
docker volume rm infra_gitlab_home infra_jenkins_home

echo "Containers and volumes removed"
docker ps -a
docker volume ls