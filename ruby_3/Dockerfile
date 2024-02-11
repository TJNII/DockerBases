FROM public.ecr.aws/docker/library/ruby:3.2

# This image is Debian based, apply Debian customizations
# Configure apt
ADD apt.conf /etc/apt/

RUN apt-get update; apt-get upgrade -y
