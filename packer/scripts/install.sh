#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

sudo apt-get -y update
sudo apt-get -y install ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get -y update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo chown -R vagrant:vagrant /media

sudo mkdir /docker
sudo mv /tmp/docker-compose.yml /docker
sudo mv /tmp/start.sh /docker
sudo chmod +x /docker/start.sh
sudo chown -R vagrant:vagrant /docker

sudo mv /tmp/jellyfin.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable jellyfin.service

sudo service docker start
cd /docker
sudo docker compose pull