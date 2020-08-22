#!/user/bin/env bash
set -e

bash -c  "echo \"${DOCKER_PASSWORD}\" | docker login --username chamithra --password-stdin"
docker pull zutherb/monolithic-shop:latest
docker tag zutherb/monolithic-shop:latest chamithra/monolithic-shop:latest
docker push chamithra/monolithic-shop:latest
