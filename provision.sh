#!/bin/bash

# Set up users and permissions
user="root"
yum install git -y
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
rpm -ivh /vagrant/shared/jre-8u202-linux-x64.rpm 

# Set new installation of Java as default
alternatives --install /usr/bin/java java  /usr/java/jre1.8.0_202-amd64/bin/java 1000

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
cp -Rv /vagrant/shared/rsa-gia/minimal/* /opt/rsa-gia

# Add java to system path in /etc/profile.d
echo 'export PATH="$PATH:/opt/java/java_default/bin:/opt/rsa-gia"' > /etc/profile.d/rsagia.sh
echo 'export JAVA_HOME=/opt/java/java_default' >> /etc/profile.d/rsagia.sh

# Install MySQL
wget -O /vagrant/shared/mysql80-community-release-el7-3.noarch.rpm https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
rpm -ivh /vagrant/shared/mysql80-community-release-el7-3.noarch.rpm
# yum install mysql-server -y
# systemctl start mysqld

# temp_mysql_password="$(grep 'temporary password' /var/log/mysqld.log)"
# mysql_secure_installation