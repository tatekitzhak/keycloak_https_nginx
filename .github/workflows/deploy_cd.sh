#!/bin/bash
# 1. Login (Optional if repo is public)
# echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" --password-stdin

# 2. Pull the latest images defined in compose
docker-compose pull

# 3. Spin up the stack
docker-compose up -d --remove-orphans

echo "Deployment complete. Checking status..."
docker-compose ps