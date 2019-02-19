#!/bin/bash
sudo yum install -y gcc openssl-devel bzip2-devel
sudo wget -P /home/vagrant https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tgz
sudo tar xzf /home/vagrant/Python-2.7.15.tgz
cd /home/vagrant/Python-2.7.15/ && sudo ./configure --enable-optimizations
cd /home/vagrant/Python-2.7.15 && sudo make altinstall
sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
export PATH="/usr/local/bin:$PATH"
python2.7 get-pip.py
