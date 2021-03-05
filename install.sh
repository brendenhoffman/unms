#!/bin/bash
# Update and install updated packages on system

dnf update -y

# Install dnf-plugins-core package to provide the commands to manage your dnf repos

dnf -y install dnf-plugins-core

# Set up the Docker stable repo

dnf config-manager -y \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

# Install docker 

dnf install -y docker-ce

#enable docker service at boot

# Start docker

systemctl start docker

# Create docker group

groupadd docker

# add user to docker group

usermod -aG docker $USER

# Install UNMS

curl -fsSL https://unms.com/v1/install > /tmp/unms_install.sh && sudo bash /tmp/unms_install.sh -y
