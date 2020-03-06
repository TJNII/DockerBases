FROM nvidia/opengl:base-ubuntu18.04

# Configure apt
ADD apt.conf /etc/apt/

RUN apt-get update; apt-get upgrade -y

RUN apt-get install -y mesa-utils