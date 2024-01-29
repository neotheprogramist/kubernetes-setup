#!/usr/bin/env bash

source .env && \
podman run --entrypoint htpasswd httpd:2 -Bbn $STAGING_REGISTRY_USER $STAGING_REGISTRY_PASS
podman run --entrypoint htpasswd httpd:2 -Bbn $PROD_REGISTRY_USER $PROD_REGISTRY_PASS
