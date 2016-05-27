#!/bin/bash

DISTRIBUTION = $(lsb_release -is)
RELEASE = $(lsb_release -cs)

apt-get update
apt-get install apt-transport-https ca-certificates curl

apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo "deb https://apt.dockerproject.org/repo ${DISTRIBUTION,,}-$RELEASE main" >>/etc/apt/sources.list

apt-get update
apt-get install docker-engine

service docker start

echo "Docker installed."

curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

docker-compose up -d -f ghost.yml