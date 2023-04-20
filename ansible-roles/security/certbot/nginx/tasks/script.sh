#!/bin/bash

read -p "Enter time : " time
read -p "Enter letsencrypt_email : " letsencrypt_email
read -p "Enter domain_name : " domain_name
cat <<EOF > vars.yml
time  : $time
letsencrypt_email : $letsencrypt_email
domain_name : $domain_name
EOF
