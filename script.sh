#!/bin/bash

echo "" > inventory.ini

read -p "Enter the number of nodes: " num_nodes

nodes=()

for (( i=1; i<=$num_nodes; i++ ))
do
    read -p "Enter node name $i: " node
    nodes+=("$node")
done


for node in "${nodes[@]}"
do
    read -p "Enter ansible_host for $node: " ansible_host
    read -p "Enter ansible_user for $node: " ansible_user


cat <<EOF >> inventory.ini
[node]
$node ansible_host=$ansible_host ansible_user=$ansible_user
[all:vars]
ansible_python_interpreter=/usr/bin/python3
EOF
done

