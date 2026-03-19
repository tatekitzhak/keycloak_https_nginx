#!/bin/bash
cd app
# docker-compose down --remove-orphans
# docker-compose build
# docker-compose up

docker-compose -f nginx/docker-compose.yaml down --remove-orphans
docker-compose -f nginx/docker-compose.yaml build
docker-compose -f nginx/docker-compose.yaml up

if [ $? -eq 0 ]; then
  echo "Success!"
else
  echo "failed!"
fi
