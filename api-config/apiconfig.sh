#!/bin/bash

sudo apt update -y

sudo apt install docker.io -y

sudo usermod -a -G docker $(whoami)

sudo systemctl start docker

sudo docker pull mcchazinho/match-making-back:latest

sudo docker run -it --name match-making-back -p 8080:8080 --restart always mcchazinho/match-making-back:latest