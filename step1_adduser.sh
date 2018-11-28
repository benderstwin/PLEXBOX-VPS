#!/bin/bash
apt update && apt full-upgrade -y
read -p "new username: " LINUX_USER
read -p "new password:" LINUX_PASS
# quietly add a user without password
adduser --quiet --disabled-password --shell /bin/bash --home /home/newuser --gecos "User" newuser
# set password
echo "${LINUX_USER}:${LINUX_PASS}" | chpasswd

echo "your username is now " ${LINUX_USER} "and password is " ${LINUX_PASS}