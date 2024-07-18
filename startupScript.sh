#!/bin/bash

echo "Starting Jenkins and Gitlab..."
docker compose -f infra/docker-compose.yml up -d
sleep 25
echo "Jenkins and Gitlab are running"

GITLAB_ADMIN_PASS=$(docker exec -it gitlab-server grep 'Password:' /etc/gitlab/initial_root_password)
JENKINS_ADMIN_PASS=$(docker exec -it jenkins-controller grep '' /var/jenkins_home/secrets/initialAdminPassword)

echo "----------------------------------------------------------------"
echo "Jenkins URL: http://localhost:6980"
echo "GitLab URL: http://localhost:6985"
echo "----------------------------------------------------------------"
echo "GitLab: root: $GITLAB_ADMIN_PASS"
echo "Jenkins: Password:$JENKINS_ADMIN_PASS"