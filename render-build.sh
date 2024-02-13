#!/usr/bin/env bash
# exit on error
set -o errexit

docker-compose build
docker-compose up -d
