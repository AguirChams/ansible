#!/bin/bash

read -p "Enter the directory to store database: "  backup_dir 
read -p "Enter the name of database : " db_name
read -p "Enter the path to store database backup file: " path
cat <<EOF > vars.yml
backup_dir : $backup_dir 
db_name : $db_name
path : $path
EOF
