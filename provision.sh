#!/bin/bash
# sudo yum install -y gcc openssl-devel bzip2-devel
user="vagrant"
sudo mkdir -p "/data/rsa"
sudo adduser rsa-data
sudo addgroup rootarch
sudo usermod -a -G rootarch rsa-data
sudo usermod -d /data/rsa rsa-data
