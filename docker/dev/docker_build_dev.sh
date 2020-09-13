#!/usr/bin/env bash

docker build . -t rkrispin/covid19sf:dev

if [[ $? = 0 ]] ; then
echo "Pushing docker..."
docker push rkrispin/covid19sf:dev
else
echo "Docker build failed"
fi
