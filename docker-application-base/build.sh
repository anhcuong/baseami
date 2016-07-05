#! /bin/bash

##### Tested with Ubuntu 14:04 ######
##### Script to build base AMI for using in microservice ######
##### The base AMI default should have: 
# java jdk 8
# docker
# git
# python 2.7
# pip
# awscli
# supervisord to run default docker on start
# netdata and cadvisor for monitoring
sudo apt-get update
sudo apt-get install -y git wget curl
sudo wget https://bootstrap.pypa.io/get-pip.py -O /tmp/get-pip.py && python /tmp/get-pip.py
sudo pip install awscli==1.10.20 supervisor==3.2.3
sudo curl -fsSL https://get.docker.com/ | sh
sudo usermod -aG docker ubuntu
sudo cp supervisord.conf /etc/supervisord.conf
sudo mkdir -p /etc/supervisord/
sudo cp netdata.conf /etc/supervisord/netdata.conf
sudo cp cadvisor.conf /etc/supervisord/cadvisor.conf
sudo cp rc.local /etc/rc.local
sudo cp -v start_* /usr/bin/
sudo chmod +x /usr/bin/start_*
sudo reboot