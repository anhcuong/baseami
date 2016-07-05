# Docker Base AMI

The base image includes:

- git
- docker
- java(jdk8)
- python(2.7)
- pip
- awscli(1.10.20)
- supervisor(3.2.3): Running on reboot
- netdata (docker container) for host monitoring: Start by supervisor
- cadvisor (docker container) for container monitoring: Start by supervisor
