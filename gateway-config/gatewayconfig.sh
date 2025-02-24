#!/bin/bash

sudo apt update -y

sudo apt install docker.io -y

sudo usermod -a -G docker $(whoami)

sudo systemctl start docker

sudo docker pull nginx:latest

sudo docker run --name mm_gateway -d -p 80:80 nginx:latest