#!/usr/bin/env bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: ./generate-htpasswd.sh {user} {password}"
    exit 1
fi

podman run --entrypoint htpasswd httpd:2 -Bbn $1 $2
