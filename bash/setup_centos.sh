#!/bin/bash
set -e
##################################################
# Install packages needed for Ansible and Python #
##################################################

sudo yum install -y epel-release wget curl
sudo yum install -y libselinux-python
#sudo yum update -y

export PATH=$PATH:/usr/local/bin
#########################################
# Install pip for Ansible installation  #
#########################################

curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python get-pip.py
sudo $(which pip) install virtualenv

#########################################
# Install Ansible to allow provisioning #
#########################################

sudo $(which pip) install ansible

