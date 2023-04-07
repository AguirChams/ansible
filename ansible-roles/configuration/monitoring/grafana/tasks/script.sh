#!/bin/bash

read -p "Enter grafana_admin_user : " grafana_admin_user
read -p "Enter grafana_admin_password :" grafana_admin_password

cat <<EOF > vars.yml
grafana_admin_user: $grafana_admin_user
grafana_admin_password: $grafana_admin_password
EOF
