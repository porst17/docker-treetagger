#!/usr/bin/env bash

if [ $# -eq 0 ]; then
	VERSION=3.2.2
elif [ $# -eq 1 ]; then
	VERSION="$1"
else
	echo "Wrong number of arguments!"
	exit 1
fi

docker build \
--no-cache \
--pull \
--rm \
--target treetagger \
--tag sfischer13/treetagger:"$VERSION" \
--build-arg VERSION="$VERSION" \
.

docker image prune --force
