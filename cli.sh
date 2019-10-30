#!/bin/bash

export uid=$(id -u)
export gid=$(id -g)

docker-compose run php-cli bash