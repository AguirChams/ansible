#!/bin/bash

# Prompt user to enter directory paths
read -p "Enter kafka username: " kafka_user
read -p "Enter kafka group name: " kafka_group
cat <<EOF > vars.yml
kafka_user: $kafka_user
kafka_group: $kafka_group
EOF
