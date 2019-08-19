#!/bin/bash

echo "$DOCKER_PASS" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag pgbouncer $DOCKER_REPOSITORY/pgbouncer:$TRAVIS_TAG
docker push $DOCKER_REPOSITORY/pgbouncer:$TRAVIS_TAG
docker tag pgbouncer $DOCKER_REPOSITORY/pgbouncer:latest
docker push $DOCKER_REPOSITORY/pgbouncer:latest
