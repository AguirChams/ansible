#!/bin/bash

# Prompt user to enter directory paths
read -p "Enter path to fail2ban directory: " fail2ban_directory
read -p "Enter path to fail2ban.local.j2: " fail2ban_local_src
read -p "Enter path to jail.local.j2: " jail_local_src
cat <<EOF > vars.yml
fail2ban_directory: $fail2ban_directory
fail2ban_local_src: $fail2ban_local_src
jail_local_src: $jail_local_src
EOF


