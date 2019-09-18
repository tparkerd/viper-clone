# Install Java(TM) SE Runtime Environment (build 1.8.0_202-b08)
# Java HotSpot(TM) 64-Bit Server VM (build 25.202-b08, mixed mode)
rpm -ivh /vagrant/shared/jdk-8u45-linux-x64.rpm

# Set new installation of Java as default
alternatives --set java /usr/java/jdk1.8.0_45/jre/bin/java

# Install dependencies for RSA-GiA
yum install -y PIL.x86_64 numpy.x86_64 ImageMagick.x86_64 ImageMagick.x86_64

# Install rsa-gia
mkdir -p /opt/rsa-gia
# cp -Rv /vagrant/shared/rsa-gia/minimal/* /opt/rsa-gia
## Install dependencies
yum install -y qt-4.8.7-3.el7_6.x86_64 qt-x11-4.8.7-3.el7_6.i686 qt-x11-4.8.7-3.el7_6.x86_64 qtwebkit-2.3.4-3.el7.i686 qtwebkit-2.3.4-6.el7.x86_64 libpng12-1.2.50-10.el7.x86_64 compat-libtiff3-3.9.4-11.el7.x86_64
wget http://mk42ws.biology.duke.edu:8000/raw-attachment/wiki/010-BenfeyLab/120-BioBusch/030-RootArch/150-RsaPipeline/090-Installation/rsa-pipeline-rpm-2.tar.gz
tar -zxvf rsa-pipeline-rpm-2.tar.gz

# The RPM installation must be forced because some of the binaries and libraries are directly placed
# into the /usr/lib and /usr/bin directories which are owned by another package: filesystem-3.2-25.el7
# The only file that may be overwritten is matlab in /usr/bin/matlab. It is included in
# rsa-pipeline-admin-2.0.0-1. If you have a version of matlab installed in this location, make sure to
# back it up
rpm -ivh rsa-pipeline-rpm-2/* --force
mv -v /usr/local/bin/gia* /opt/rsa-gia
mv -v /usr/local/bin/matlab-programs /opt/rsa-gia
mv -v /usr/local/bin/reconstruction* /opt/rsa-gia
mv -v /usr/local/bin/rsa* /opt/rsa-gia
mv -v /usr/local/bin/skeleton3D /opt/rsa-gia

# Install file manager tools
git clone https://github.com/Topp-Roots-Lab/rsa-tools.git
mkdir -p /opt/rsa-gia/importer
cp -Rv rsa-tools/Importer/* /opt/rsa-gia/importer
g++ /opt/rsa-gia/importer/rsa-mv2orig-launcher.cpp -o /opt/rsa-gia/importer/rsa-mv2orig-launcher
chown -v rsa-data:rootarch /opt/rsa-gia/importer/rsa-mv2orig-launcher
chmod -v 4750 /opt/rsa-gia/importer/rsa-mv2orig-launcher
chmod -v +x /opt/rsa-gia/importer/rsa-mv2orig.py

# Setup data folders and set ownership & permissions
rsa-create-orig
echo 'yes' | rsa-setrights-orig
echo 'yes' | rsa-setrights-proc

# Install templates into data folder
src_tmplt='/opt/rsa-gia/rsa-gia-templates/*'
dest_tmplt='/data/rsa/rsa-gia-templates'
chown rsa-data:rootarch "$dest_tmplt"
chmod 2750 "$dest_tmplt"
cp -Rv $src_tmplt $dest_tmplt
# directories
find $dest_tmplt -mindepth 1 -type d -exec chown rsa-data:rootarch '{}' \;
find $dest_tmplt -mindepth 1 -type d -exec chmod 2750 '{}' \;
# files
find $dest_tmplt -mindepth 1 -type f -exec chown rsa-data:rootarch '{}' \;
find $dest_tmplt -mindepth 1 -type f -exec chmod 640 '{}' \;
rm -rvf /opt/rsa-gia/rsa-gia-templates /opt/rsa-gia/rsa-install-rsagiatemplates rsa-create-rsadata-rootarch rsa-mv2orig


# Add java to system path in /etc/profile.d
echo 'export PATH="$PATH:/opt/java/java_default/bin:/opt/rsa-gia"' > /etc/profile.d/rsagia.sh
echo 'export JAVA_HOME=/opt/java/java_default' >> /etc/profile.d/rsagia.sh

# Create rsa-gia application shortcut

cp -Rv /vagrant/share/rsa-gia/rsagia.desktop /usr/share/applications/

