#!/bin/bash

read -p "Enter the path to the ufw default src directory: " ufw_default_src
cat <<EOF > vars.yml
ufw_default_src: $ufw_default_src
EOF


