#!/bin/bash

read -p "Enter user name : " user
read -p "Enter user password :" password

cat <<EOF > main.yml
user: $user
password: $password
EOF
