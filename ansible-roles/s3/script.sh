#!/bin/bash

read -p "Enter aws_access_key : " aws_access_key
read -p "Enter aws_secret_key :" aws_secret_key
read -p "Enter s3_bucket_name :" s3_bucket_name
read -p "Enter path :" path
read -p "Enter region :" region

cat <<EOF > vars.yml
aws_access_key: $aws_access_key 
aws_secret_key: $aws_secret_key 
s3_bucket_name: " $s3_bucket_name 
path: $path    #local where folder exixts
region: $region 
EOF
