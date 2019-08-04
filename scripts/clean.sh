#!/usr/bin/env bash

docker images --quiet --filter=reference="sfischer13/treetagger:*" | xargs -r docker rmi --force

docker image prune --force
