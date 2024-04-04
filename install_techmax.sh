#!/bin/bash

# Update package repository and install Nginx
sudo yum update -y
sudo yum install -y nginx

# Start Nginx service
sudo systemctl enable nginx
sudo systemctl start nginx

# Change directory to Nginx web root
cd /usr/share/nginx/html

# Download and unzip the content from GitHub repository
sudo wget https://github.com/azeezsalu/techmax/archive/refs/heads/main.zip
sudo unzip main.zip
sudo mv techmax-main/* .
sudo rm -rf techmax-main main.zip
