#!/bin/bash

export INTERNAL_HOST_IP=$(ip route show default | awk '/default/ {print $3}')

docker-entrypoint.sh php-fpm