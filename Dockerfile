# Pull base image.
FROM ubuntu:16.04

MAINTAINER "Koji Shiraishi <shiraco@gmail.com>"

# Install Python.
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y libhdf5-dev python3-pip

# Enable as python or pip command
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1
RUN update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

# Create user.
RUN useradd -ms /bin/bash ubuntu

# Define working directory.
USER ubuntu
WORKDIR /home/ubuntu

# Define default command.
CMD ["bash"]
