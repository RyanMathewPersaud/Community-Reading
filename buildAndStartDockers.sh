#!/bin/bash
set -e

VERSION=$1
ENV=$2

if [ -z "$VERSION" ];then
    echo ">>> Please enter a version (sh buildAndStartDocker.sh [VERSION] [ENV])"
    exit 1
elif [ -z "$ENV" ];then
    echo ">>> Please enter a env (sh buildAndStartDocker.sh [VERSION] [ENV])"
    exit 1
fi

docker rm -f app || true
docker build -t app .
docker run -it -d -p 5001:5001 --restart always -e VERSION=$1 -e ENV=$2 --name app app
