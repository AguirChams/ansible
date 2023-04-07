#!/bin/bash

read -p "Enter root name : " root
read -p "Enter server ip address : " server_ip
read -p "Enter public key :" key
read -p "Enyte target node (root name): " user
cat <<EOF > vars.yml
root: $root
server_ip: $server_ip
key: $key
user: $user
EOF
