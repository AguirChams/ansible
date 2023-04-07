#!/bin/bash

read -p "Enter vcenter_hostname : " vcenter_hostname
read -p "Enter datacenter:" datacenter
read -p "Enter vcenter_username:" vcenter_username
read -p "Enter vcenter_password:" vcenter_password
read -p "Enter vm_name:" vm_name
read -p "Enter vm_guestid:" vm_guestid
read -p "Enter vm_disk_gb:" vm_disk_gb
read -p "Enter vm_disk_type:" vm_disk_type
read -p "Enter vm_disk_datastore:" vm_disk_datastore
read -p "Enter vm_hw_ram_mb:" vm_hw_ram_mb 
read -p "Enter vm_hw_cpu_n:" vm_hw_cpu_n
read -p "Enter vm_hw_scsi:" vm_hw_scsi
read -p "Enter vm_net_name:" vm_net_name
read -p "Enter vm_net_type:" vm_net_type
read -p "Enter vcenter_destination_folder:" vcenter_destination_folder
read -p "Enter vm_state:" vm_state

cat <<EOF > vars.yml

vcenter_hostname: $vcenter_hostname
vcenter_datacenter : $vcenter_datacenter 
vcenter_username: $vcenter_username 
vcenter_password: $vcenter_password
vm_name: $vm_name
vm_guestid: $vm_guestid 
vm_disk_gb: $vm_disk_gb
vm_disk_type: $vm_disk_type 
vm_disk_datastore: $vm_disk_datastore 
vm_hw_ram_mb: $vm_hw_ram_mb 
vm_hw_cpu_n: $vm_hw_cpu_n 
vm_hw_scsi: $vm_hw_scsi 
vm_net_name: $vm_net_name 
vm_net_type: $vm_net_type 
vcenter_destination_folder: $vcenter_destination_folder 
vm_state: $vm_state 

EOF



