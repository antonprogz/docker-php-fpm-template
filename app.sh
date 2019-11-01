#!/bin/bash

export uid=$(id -u)
export gid=$(id -g)
export ip=$(ip addr show docker0 | grep inet | awk '{print $2}' | head -n 1 | awk -F "/" '{print $1}')

docker-compose up -d