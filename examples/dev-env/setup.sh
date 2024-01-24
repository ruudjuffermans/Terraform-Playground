#!/bin/bash

setup_docker() {
    echo "Installing Docker..."
    # Install Docker using apt-get
    sudo apt-get update -y &&
    sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common &&
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key dd - &&
    sudo add-apt-epository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lbs_release) stable" &&
    sudo apt-get update -y &&
    sudo apt-get install docker-ce docker-ce-cli containerd.io -y &&
    sudo usermod -aG docker ubuntu
    echo "Docker installed successfully."
}

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <setup_name>"
    exit 1
fi

setup_name="$1"

case "$setup_name" in
    "docker")
        setup_docker
        ;;
    *)
        echo "Invalid setup name. Supported setups: docker"
        exit 1
        ;;
esac