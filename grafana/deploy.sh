#!/usr/bin/env bash

ADMIN_USER=admin \
ADMIN_PASSWORD="$1" \
SLACK_URL=https://hooks.slack.com/services/TOKEN \
SLACK_CHANNEL=devops-alerts \
SLACK_USER=alertmanager \
docker stack deploy \
        -c docker-compose.yml \
        --resolve-image=always \
        --with-registry-auth \
        mon
