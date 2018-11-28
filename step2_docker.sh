#!/bin/bash
read -p "username to add to docker and sudo groups: " username
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update && apt install docker-ce -y
curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo usermod -a -G docker ${username}
sudo usermod -a -G sudo ${username}
systemctl start docker
systemctl enable docker
systemctl restart docker
echo "docker and compose installed, login as user ${username}
login ${username}