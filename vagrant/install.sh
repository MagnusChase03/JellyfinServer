#!/bin/bash

sudo mkdir -p /app/media
sudo mv /tmp/docker-compose.yml /app
sudo chown -R vagrant:vagrant /app

cd /app
sudo docker compose up -d