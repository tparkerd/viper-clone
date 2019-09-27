# viper-clone

Below is a list of files that have **not** changed from rsa-pipeline-2 installation and those found in `/opt/local/bin/` on `viper.datasci.danforthcenter.org`

    f1f1c86ab03226b10cc2ef48bc1e27a8  ./gia/rio2.zip
    8bf7ce3c305533055691684edeb92b41  ./gia/readme.txt
    46b0f7ff00f52d906b519780f9e521df  ./gia/authors.txt
    0c960c799dc2198e0d7f180dd0b1ba68  ./gia/list_licenses.txt
    fa7568429c94a676bc6417bdf47a4271  ./gia/settings.xml
    d52c996c9fc43fd326c73637cd51e059  ./gia/copyright.txt
    9ce5a0a21fe6256073a9e2a1ed0d0db2  ./gia/gia.log
    84271c6175f6cfbd40e584482e0052bc  ./gia/interpreter
    c3ba9125d03dca852be495de03433de0  ./gia/giaroots
    261a52eac7cf229a435bcdfeeabc4508  ./rsa-fix-GLIBCXX_3.4.11-not_found-problem
    01755093c5305029fd29371d70f8d578  ./rsa-chkrights-proc
    8b6831c02a6faad854a3310e4acc27ed  ./rsa-chkrights-orig
    f2409716c87609bf9df61057ef9ea9f7  ./skeleton3D/Skeleton
    899b4676f7c440996cdd2693682f69f1  ./skeleton3D/rsa-pipeline-license.txt
    f5da9e913756e1679a97a64558fe432f  ./rsa-create-rsadata-rootarch
    4613660687de1a78a781fd214175adfc  ./rsa-pipeline-contributors.txt
    f6b69096d34b1072b6e5fca97d770c95  ./rsa-setrights-orig
    6de709f749b810b0c9f991f9f6a33a96  ./rsa-reconstruction3D
    9843428df23f3383f13cf686cff98fc1  ./reconstruction3D-stl/recon-v4-stl
    899b4676f7c440996cdd2693682f69f1  ./reconstruction3D-stl/rsa-pipeline-license.txt
    71fdca3474ed993e626276d2c64a63ad  ./rsa-install-rsagiatemplates
    899b4676f7c440996cdd2693682f69f1  ./rsa-pipeline-license.txt
    85e2a7eda4dbf8709b86b8bf5b394763  ./rsa-skeleton3D
    071f8524051589c9ab04eb07d87cc891  ./rsa-isosurface
    7833abad312dd6afe8b44e41ebfc33bd  ./rsa-setrights-proc
    899b4676f7c440996cdd2693682f69f1  ./reconstruction3D/rsa-pipeline-license.txt
    2c4ed390ddfd56a009b6539557b9dd2a  ./reconstruction3D/Reconstruction
    c469e97018e8665d00a0f6e02050784f  ./rsa-create-orig

# Set-up Guide

The following steps were taken to upgrade and configure the environment for viper.datasci.danforthcenter.org

## Step 0: Safety measures

Ask Noah/Josh to take a snapshot of the system in case something goes horribly wrong.

## Step 1: Install dependencies and system-wide tools

Use the following commands to update the system and install dependencies
```bash
# Update system
yum update -y

# Create supplementary users if needed
groupadd rootarch
usermod -aG rootarch root
usermod -aG rootarch vagrant
adduser rsa-data
usermod -aG rootarch rsa-data

# Install git to clone this repo
# TODO(tparker): Update this for when the repo has been moved to operational scripts
yum install -y git wget
# git clone https://github.com/tparkerd/viper-clone.git --branch rsagia --single-branch

# Install Xfce
yum install -y epel-release
yum groupinstall -y "Server with GUI"
yum groupinstall -y "Xfce"
systemctl set-default graphical.target
systemctl isolate graphical.target

# Install TigerVNC
yum install -y tigervnc-server

### Placeholder for all users
echo 'alias startvnc="vncserver :93 -geometry 1900x1200"' >> "/etc/profile.d/vnc.sh"
echo 'alias killvnc="vncserver -kill :93"' >> "/etc/profile.d/vnc.sh"

# Install Java(TM) SE Runtime Environment (build 1.8.0_202-b08)
# Java HotSpot(TM) 64-Bit Server VM (build 25.202-b08, mixed mode)
rpm -ivh /vagrant/shared/jdk-8u45-linux-x64.rpm

# Set new installation of Java as default
alternatives --set java /usr/java/jdk1.8.0_45/jre/bin/java

# Install dependencies for RSA-GiA
yum install -y PIL numpy ImageMagick

# Install rsa-gia
mkdir -p /opt/rsa-gia
# cp -Rv /vagrant/shared/rsa-gia/minimal/* /opt/rsa-gia
## Install dependencies
yum install -y qt-4.8.7-3.el7_6.x86_64 qt-x11-4.8.7-3.el7_6.i686 qt-x11-4.8.7-3.el7_6.x86_64 qtwebkit-2.3.4-3.el7.i686 qtwebkit-2.3.4-6.el7.x86_64 libpng12-1.2.50-10.el7.x86_64 compat-libtiff3-3.9.4-11.el7.x86_64 compat-libtiff3
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
yum install -y gcc-c++
git clone https://github.com/Topp-Roots-Lab/rsa-tools.git
mkdir -p /opt/rsa-gia/importer
cp -Rv rsa-tools/Importer/* /opt/rsa-gia/importer
g++ /opt/rsa-gia/importer/rsa-mv2orig-launcher.cpp -o /opt/rsa-gia/importer/rsa-mv2orig-launcher
chown -v rsa-data:rootarch /opt/rsa-gia/importer/rsa-mv2orig-launcher
chmod -v 4750 /opt/rsa-gia/importer/rsa-mv2orig-launcher
chmod -v +x /opt/rsa-gia/importer/rsa-mv2orig.py

# Add java to system path in /etc/profile.d
echo 'export PATH="$PATH:/opt/java/java_default/bin:/opt/rsa-gia"' > /etc/profile.d/rsagia.sh
echo 'export JAVA_HOME=/opt/java/java_default' >> /etc/profile.d/rsagia.sh
source /etc/profile.d/rsagia.sh

# Setup data folders and set ownership & permissions
rsa-create-orig
echo 'yes' | rsa-setrights-orig
echo 'yes' | rsa-setrights-proc

# Install templates into data folder
src_tmplt='/opt/local/bin/rsa-gia-templates/*'
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
rm -rvf /opt/rsa-gia/rsa-gia-templates /opt/rsa-gia/rsa-install-rsagiatemplates rsa-create-rsadata-rootarchrsa-mv2orig

# Create rsa-gia application shortcut
cp -Rv /vagrant/shared/rsa-gia/rsagia.desktop /usr/share/applications/

# Meshlab
# Installation option #2: Source
# Based on this guide: https://gist.github.com/LogWell/bffd0a79ff13ec392f8fcf6749388c46

## Get dependencies to do the compilation
### Qt5, Glu, Glew, Jhead, Patch
yum install -y qt5-qtbase qt5-qtbase-devel qt5-qtbase-static qt5-qtxmlpatterns qt5-qtxmlpatterns-devel qt5-qtscript qt5-qtscript-devel gcc-c++ lib3ds lib3ds-devel libGLEW mesa-libGLU mesa-libGLU-devel libqtxdg-qt4 libqtxdg-qt4-devel blas blas-devel lapack lapack-devel lapack-static muParser muParser-devel qhull qhull-devel qtsoap qtsoap-devel jhead eigen3-devel patch

QMAKE_FLAGS=('-spec' 'linux-g++' 'CONFIG+=release' 'CONFIG+=qml_release' 'CONFIG+=c++11' 'QMAKE_CXXFLAGS+=-fPIC' 'QMAKE_CXXFLAGS+=-fopenmp' 'QMAKE_CXXFLAGS+=-std=c++11' 'QMAKE_CXXFLAGS+=-fpermissive' 'INCLUDEPATH+=/usr/include/eigen3' "LIBS+=-L`pwd`/lib/linux-g++")
MAKE_FLAGS=('-j4')

git clone --depth 1 https://github.com/cnr-isti-vclab/meshlab.git
git clone --depth 1 https://github.com/cnr-isti-vclab/vcglib.git -b devel
curl https://data.gpo.zugaina.org/gentoo/media-gfx/meshlab/files/2016.12/meshlab-2016.12-remove-header.patch | patch -p1

cd meshlab && git fetch --tags && git checkout 25f3d17
ln -s src/external external
cd src/external
qmake-qt5 external.pro ${QMAKE_FLAGS[@]} && make ${MAKE_FLAGS[@]}
cp -v lib/linux/* lib/linux-g++/ 

cd ../common
qmake-qt5 common.pro ${QMAKE_FLAGS[@]} && make ${MAKE_FLAGS[@]}

# Comment out problematic plugins that use texture.h in vcglib
# https://github.com/cnr-isti-vclab/meshlab/issues/428#issuecomment-474884632
cd ..
sed -i 's/meshlabplugins\/filter_clean/#\0/g' meshlab_full.pro
sed -i 's/meshlabplugins\/filter_create/#\0/g' meshlab_full.pro
sed -i 's/meshlabplugins\/filter_meshing/#\0/g' meshlab_full.pro
sed -i 's/meshlabplugins\/filter_texture/#\0/g' meshlab_full.pro
sed -i 's/meshlabplugins\/filter_trioptimize/#\0/g' meshlab_full.pro
sed -i 's/meshlabplugins\/filter_unsharp/#\0/g' meshlab_full.pro
sed -i 's/meshlabplugins\/filter_voronoi/#\0/g' meshlab_full.pro
sed -i 's/sampleplugins\/filter_geodesic/#\0/g' meshlab_full.pro
qmake-qt5 meshlab_full.pro ${QMAKE_FLAGS[@]} && make ${MAKE_FLAGS[@]}
mkdir -p /opt/meshlab
cp -Rv distrib/* /opt/meshlab

echo 'export PATH="$PATH:/opt/meshlab"' >> /etc/profile.d/meshlab.sh
echo 'export LD_LIBRARY_PATH="/opt/meshlab"' >> /etc/profile.d/meshlab.sh
source /etc/profile.d/meshlab.sh

# Install X virtual framebuffer for to allow meshlab to run in headless environment
yum install -y xorg-x11-server-Xvfb

# Install miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh | bash
# https://docs.conda.io/projects/conda/en/latest/user-guide/configuration/admin-multi-user-install.html

# Configure miniconda to include bioconda channel
# Set up bioconda
conda config --add channels bioconda

# Install additional tools that have been requested over time
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

# Install Nodejs
curl -sL https://rpm.nodesource.com/setup_10.x | sudo bash -
yum install nodejs
npm install -g n
n latest

```

# Troubleshooting

## Installing MeshLab

There are three options for installing MeshLab onto a CentOS 7 system: build from source, Snap, and puias-computational.

In the main guide, I built from source and disabled several plugins that were missing a function and would not compile. The plugins removed where the following:

    meshlabplugins/filter_create
    meshlabplugins/filter_meshing
    meshlabplugins/filter_texture
    meshlabplugins/filter_trioptimize
    meshlabplugins/filter_unsharp
    meshlabplugins/filter_voronoi
    sampleplugins/filter_geodesic

However, if you wish to try the versions provided by Snap or puias-computational repo, below is a guide to do so.

### Snap
Note, despite its simple installation, I chose not to use this because permission errors were consistently produced on start up. Specifically, there is an error for permission to create /run/user/<current_user_ID> directory upon start up. 
```bash
# Install Snap
yum install -y snapd && systemctl enable --now snapd.socket
# Install MeshLab
snap install meshlab
```

### PUIAS-Computational (v1.3.2_64bit Oct 8 2016)
[Package Reference](https://centos.pkgs.org/7/puias-computational-x86_64/meshlab-1.3.2-10.sdl7.x86_64.rpm.html)

```bash
yum install -y lib3ds lib3ds-devel libGLEW mesa-libGLU mesa-libGLU-devel libqtxdg-qt4 libqtxdg-qt4-devel blas blas-devel lapack lapack-devel lapack-static muParser muParser-devel qhull qhull-devel qtsoap qtsoap-devel jhead

wget http://springdale.math.ias.edu/data/puias/computational/7/x86_64/levmar-2.5-6.sdl7.x86_64.rpm
rpm -Uvh levmar-2.5-6.sdl7.x86_64.rpm
yum install -y levmar

wget http://springdale.math.ias.edu/data/puias/computational/7/x86_64/meshlab-1.3.2-10.sdl7.x86_64.rpm

rpm -Uvh meshlab-1.3.2-10.sdl7.x86_64.rpm
yum install -y meshlab
```



# FAQ

## Why Java 1.8u45?

  JavaFX library was removed in later versions, and it is a required dependency. It appears that JavaFX is **not** free for newer versions.

## Why xfce?

  This is just a personal preference  because it is lightweight. It can be changed for another desktop environment.

## Why install RSA-GiA into `/opt`?

  Originally, the application was installed into `/opt/local/bin`. I believe that the [Filesystem Hierarchy Standard](https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard) has changed since RSA-GiA original development. It seems like `/opt/local/bin` does not follow the current FHS, so I am choosing to place the files into `/opt/rsa-gia`. As such, must be added to `PATH`, and is done using `/etc/profile.d`
