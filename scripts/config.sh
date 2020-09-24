#! /bin/bash

# initial command to update environment packages
sudo apt update && sudo apt upgrade -y

# install extra packages
sudo apt install -y wget unzip curl

# install aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# install terraform
wget https://releases.hashicorp.com/terraform/0.13.3/terraform_0.13.3_linux_amd64.zip
unzip terraform_0.13.3_linux_amd64.zip
sudo mv terraform ./bin

# install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl 


# install docker and docker-compose
curl https://get.docker.com | sudo bash
sudo usermod -aG docker $(whoami)
sudo apt update
sudo apt install -y curl jq
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# install npm and node
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install nodejs

# install chrome browser for testing
sudo apt-get install -y chromium-browser

# export env variables
export SPRING_DATASOURCE_URI="${SPRING_DATASOURCE_URI}"
export SPRING_DATASOURCE_USERNAME="${SPRING_DATASOURCE_USERNAME}"
export SPRING_DATASOURCE_PASSWORD="${SPRING_DATASOURCE_PASSWORD}"