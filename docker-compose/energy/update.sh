#!/bin/bash
set -e

docker-compose pull
docker-compose run web rake db:migrate
docker-compose up -d
