#!/bin/bash

#fail on any errors
set -eu

#install yum-config-manager to manage your repositories
sudo yum install -y yum-utils

#use yum-config-manager to add the official HashiCorp Linux repositories
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

#install terraform
sudo yum -y install terraform

#verify terraform is installed
terraform --version