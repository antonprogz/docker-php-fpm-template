#!/bin/bash

export uid=$(id -u)
export gid=$(id -g)

docker-compose up -d