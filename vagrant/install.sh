#!/bin/bash

sudo mkdir /app
sudo mv /tmp/docker-compose.yml /app
sudo chown -R vagrant:vagrant /app

cd /app
sudo docker compose up -d