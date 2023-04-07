#!/bin/bash

read -p "Enter user name : " user
read -p "Enter public key :" key
read -p "Enter root name : " root
cat <<EOF > vars.yml
user: $user
key: $key
root: $root
EOF
