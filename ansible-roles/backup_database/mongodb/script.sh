#!/bin/bash

read -p "Enter database host: "  login_database
read -p "Enter database username: "  login_user
read -p "Enter database password: "  login_password
read -p "Enter the directory to store database: "  backup_dir 
read -p "Enter the name of database : " db_name
read -p "Enter the path to store database backup file: " path
cat <<EOF > vars.yml
login_database: $login_database
login_user: $login_user
login_password: $login_password
backup_dir : $backup_dir 
db_name : $db_name
path : $path
EOF
