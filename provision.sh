#!/bin/bash

# Set up users and permissions
user="root"
yum install git -y`
# mkdir -p "/data/rsa"
# adduser rsa-data
groupadd rootarch
usermod -a -G rootarch root
usermod -a -G rootarch vagrant
adduser tparker
usermod -a -G rootarch tparker
# usermod -d /data/rsa rsa-data
# cp -Rv /vagrant/shared/rsagia/* /usr/local/bin
# chown -Rv root:rootarch /data
# chmod g+w /data

# Install Xfce
yum install epel-release -y
yum groupinstall "Server with GUI" -y
yum groupinstall "Xfce" -y
systemctl set-default graphical.target
systemctl isolate graphical.target

# Install TigerVNC
yum install tigervnc-server -y

# Install Java(TM) SE Runtime Environment (build 1.8.0_202-b08)
# Java HotSpot(TM) 64-Bit Server VM (build 25.202-b08, mixed mode)
# rpm -ivh /vagrant/shared/jre-8u202-linux-x64.rpm 
rpm -ivh /vagrant/shared/jdk-8u45-linux-x64.rpm

# Set new installation of Java as default
# alternatives --set java /usr/java/jre1.8.0_202-amd64/bin/java
alternatives --set java /usr/java/jdk1.8.0_45/jre/bin/java

# Install dependencies
yum install -y PIL.x86_64 numpy.x86_64 ImageMagick.x86_64 ImageMagick.x86_64 -y

# Create alias for starting VNC
echo 'alias startvnc="vncserver :93 -geometry 1900x1200"' >> "$HOME/.bashrc"
echo 'alias killvnc="vncserver -kill :93"' >> "$HOME/.bashrc"

### Placeholder for all users
echo 'alias startvnc="vncserver :93 -geometry 1900x1200"' >> "/etc/profile.d/vnc.sh"
echo 'alias killvnc="vncserver -kill :93"' >> "/etc/profile.d/vnc.sh"

# Install rsa-gia
mkdir -p /opt/rsa-gia
# cp -Rv /vagrant/shared/rsa-gia/minimal/* /opt/rsa-gia
## Install dependencies
yum install -y qt-4.8.7-3.el7_6.x86_64 qt-x11-4.8.7-3.el7_6.i686 qt-x11-4.8.7-3.el7_6.x86_64 qtwebkit-2.3.4-3.el7.i686 qtwebkit-2.3.4-6.el7.x86_64 libpng12-1.2.50-10.el7.x86_64 compat-libtiff3-3.9.4-11.el7.x86_64
wget http://mk42ws.biology.duke.edu:8000/raw-attachment/wiki/010-BenfeyLab/120-BioBusch/030-RootArch/150-RsaPipeline/090-Installation/rsa-pipeline-rpm-2.tar.gz
tar -zxvf rsa-pipeline-rpm-2.tar.gz 

rpm -ivh rsa-pipeline-rpm-2/* --force

# Initilize folders
rsa-create-orig

# Move files to /opt
mkdir /opt/rsa-gia
mv /usr/local/bin/gia* /opt/rsa-gia
mv /usr/local/bin/matlab-programs /opt/rsa-gia
mv /usr/local/bin/reconstruction* /opt/rsa-gia
mv /usr/local/bin/rsa* /opt/rsa-gia
mv /usr/local/bin/skeleton3D /opt/rsa-gia

# Add java to system path in /etc/profile.d
echo 'export PATH="$PATH:/opt/java/java_default/bin:/opt/rsa-gia"' > /etc/profile.d/rsagia.sh
echo 'export JAVA_HOME=/opt/java/java_default' >> /etc/profile.d/rsagia.sh

## Install MySQL
#wget -O /vagrant/shared/mysql80-community-release-el7-3.noarch.rpm https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
#rpm -ivh /vagrant/shared/mysql80-community-release-el7-3.noarch.rpm
#yum install mysql-server -y
#systemctl start mysqld
#systemctl enable mysqld

# temp_mysql_password="$(grep 'temporary password' /var/log/mysqld.log)"
# mysql_secure_installation

# Meshlab & server
# Install X virtual framebuffer for to allow meshlab to run in headless environment
yum install xorg-x11-server-Xvfb -y

# Afterward, install the additional libraries
# Set up miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh | bash
# https://docs.conda.io/projects/conda/en/latest/user-guide/configuration/admin-multi-user-install.html
# Set up bioconda
conda config --add channels bioconda
# minimap2
# guppy_basecaller
# guppy_aligner
# guppy_barcoder
# guppy_basecaller_1d2
# guppy_basecall_server
# Tassel 5
# flye
# flye-assemble
# flye-contigger
# flye-minimap2
# flye-polish
# flye-repeat