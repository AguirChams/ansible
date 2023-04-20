#!/bin/bash

read -p "Enter backup user : " backup_user
read -p "Enter backup_group : " backup_group
read -p "Enter backup_src : " backup_src
read -p "Enter backup_frequency_minutes : " backup_frequency_minutes
read -p "Enter backup_destination : " backup_dest 
read -p "Enter path : " path
cat <<EOF > vars.yml
backup_user : $backup_user
backup_group  : $backup_group 
backup_src  : $backup_src
backup_frequency_minutes : $backup_frequency_minutes
backup_dest  : $backup_dest
path: $path 
# The rsync filter of files/directories to include/exclude
backup_filter: |
  !
  # Include everything
  + /*

# Directory for backup scripts
backup_script_dir: '~/.backup'

# The name to use for cron
backup_cron_name: backup

# The name to use for systemd service
backup_service_name: backup
EOF
