#!/bin/bash

sudo apt update -y

sudo apt install docker.io -y

sudo usermod -a -G docker $(whoami)

sudo systemctl start docker

sudo docker pull mcchazinho/match-making-front:latest

sudo docker run --name match-making-front -d -p 80:80 --restart always mcchazinho/match-making-front:latest