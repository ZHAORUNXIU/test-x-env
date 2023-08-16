#!/usr/bin/env bash

# default env defined in .env

set -e

echo "Stop all containers..."
docker-compose stop mongodb
docker-compose stop mongo-express
docker-compose stop zookeeper
docker-compose stop kafka1
docker-compose stop kafka2
docker-compose stop kafka3
docker-compose stop kafka-ui

echo "Start mongodb..."
docker-compose up -d mongodb

echo "Start mongo-express..."
docker-compose up -d mongo-express

echo "Start zookeeper..."
docker-compose up -d zookeeper

echo "Start kafka1..."
docker-compose up -d kafka1

echo "Start kafka2..."
docker-compose up -d kafka2

echo "Start kafka3..."
docker-compose up -d kafka3

echo "Start kafka-ui..."
docker-compose up -d kafka-ui