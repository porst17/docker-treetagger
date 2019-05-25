#!/usr/bin/env bash

set -e -o pipefail

if [ "$1" = '--help' ]; then
    exec ls -1 /local/bin /local/cmd
fi

exec "$@"
