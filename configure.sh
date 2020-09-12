#!/bin/bash

export WORDPRESS_DB_HOST=$(ip route show default | awk '/default/ {print $3}')

docker-entrypoint.sh php-fpm