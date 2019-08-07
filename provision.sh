#!/bin/bash

# Set up users and permissions
user="root"
yum install git -y
# mkdir -p "/data/rsa"
# adduser rsa-data
groupadd rootarch
# usermod -a -G rootarch rsa-data
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

# Install Java (Runtime Environment)
yum install java-1.8.0-openjdk -y

# Install dependencies
yum install -y PIL.x86_64 numpy.x86_64 ImageMagick.x86_64 ImageMagick.x86_64 -y

# Create alias for starting VNC
echo 'alias startvnc="vncserver :93 -geometry 1900x1200"' >> "$HOME/.bashrc"
echo 'alias killvnc="vncserver -kill :93"' >> "$HOME/.bashrc"

# rsa-gia installation

# Step 2: Configure Yum

# mkdir -pv "$HOME/.backup/yum-config-ORIGINAL"
# cp -rv /etc/yum.repos.d "$HOME/.backup/yum-config-ORIGINAL"
# cp -rv /etc/pki "$HOME/.backup/yum-config-ORIGINAL"
# rm -rf /etc/yum.repos.d
# rm -rf /etc/pki
# cp -rv /vagrant/shared/rsa-pipeline-yum-config/yum.repos.d /etc
# cp -rv /vagrant/shared/rsa-pipeline-yum-config/pki /etc
# chmod 700 /etc/pki/rsyslog
# chmod 700 /etc/pki/CA/private
# chmod 640 /etc/pki/rpm-gpg/RPM-GPG-KEY-linux-at-duke

yum list rpm*
yum install createrepo -y
mkdir -pv /root/YumLocalRepo
find /vagrant/shared/ -type f -iname "rsa-create-yumlocalrepo.txt" -exec sh {} \;
cp /vagrant/shared/rsa-pipeline-yum-config/Local.repo /etc/yum.repos.d
