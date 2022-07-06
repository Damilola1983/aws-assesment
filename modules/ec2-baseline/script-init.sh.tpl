#!/bin/bash

# Update and install Packakges
sudo apt-get update
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo docker run --name nginx -d -p 80:80 nginx