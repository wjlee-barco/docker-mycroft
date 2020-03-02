#!/bin/bash

#
# Step 1: This file first update env with your .env file
#
# Step 2: Update necessary components and docker
# 
# 2.1 lsb_release
# 2.2 curl
# 2.3 ntp
# 2.4 docker
# 2.5 docker-compose
#
sudo apt-get -y install lsb-core
sudo apt-get -y install curl
# install ntp
sudo apt-get -y install ntp
sudo service ntp restart

# install git
sudo apt-get install -y git
sudo apt-get install -y git-lsf
#install nmap 
sudo apt-get install -y nmap

# install socat
sudo apt-get install -y socat 
    
# docker installation
sudo curl -sSL https://get.docker.com | sh
sudo usermod -aG docker root
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
exit 0
