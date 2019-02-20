#!/bin/bash
# sudo yum install -y gcc openssl-devel bzip2-devel
user="vagrant"
# wget -P "/home/$user" https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tgz
# tar xzf "/home/$user/Python-2.7.15.tgz"
# cd "/home/$user/Python-2.7.15/" && ./configure --enable-optimizations
# cd "/home/$user/Python-2.7.15" && make altinstall
# curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
# export PATH="/usr/local/bin:$PATH"
# python2.7 get-pip.py
# cd "/home/$user/shared" && sudo mkdir /opt/miniconda && sudo chmod ugo+w /opt/miniconda && ./Miniconda2-latest-Linux-x86_64.sh -u -b -p "/opt/miniconda"
# export PATH="/opt/miniconda/bin:$PATH"

# Minimap installation
# curl -L https://github.com/lh3/minimap2/releases/download/v2.15/minimap2-2.15_x64-linux.tar.bz2 | tar -jxvf -
# sudo mkdir -p /opt/minimap2/ && sudo cp ./minimap2-2.15_x64-linux/minimap2 /opt/minimap2/minimap2
# sudo ln -s /opt/minimap2/minimap2 /usr/local/bin/minimap2

# Dependencies
# 
# libhdf5.so.8()(64bit)
# libc.so.6(GLIBC_2.14)(64bit)
# libc.so.6(GLIBC_2.17)(64bit)
# libstdc++.so.6(GLIBCXX_3.4.18)(64bit)
# libhdf5_hl.so.8()(64bit)
# libzmq.so.5()(64bit)
# libstdc++.so.6(GLIBCXX_3.4.19)(64bit)
# libstdc++.so.6(GLIBCXX_3.4.14)(64bit)
# libstdc++.so.6(CXXABI_1.3.5)(64bit)
# libstdc++.so.6(GLIBCXX_3.4.15)(64bit)

# libhdf5.so.8()(64bit)
# Download latest puias-computational rpm from
# http://springdale.math.ias.edu/data/puias/computational/6/x86_64/
wget -P "/home/$user" http://springdale.math.ias.edu/data/puias/computational/6/x86_64/puias-computational-GPFS-6-1.puias6.8.noarch.rpm
# Install puias-computational rpm:
rpm -Uvh puias-computational*rpm
# Install hdf5-1811-gcc rpm package:
yum install hdf5-1811-gcc

libhdf5.so.8()(64bit)
