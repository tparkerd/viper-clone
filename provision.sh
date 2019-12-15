# Create users and groups
adduser ctopp
adduser ibaxter
adduser njiang
adduser tparker
adduser rsa-data
groupadd rootarch
usermod -aG rootarch ctopp
usermod -aG rootarch njiang
usermod -aG rootarch tparker
usermod -aG rootarch rsa-data
usermod -g rootarch rsa-data
usermod -g ctopp njiang
usermod -g ibaxter tparker

# Mount shares
mkdir -pv /shares/ctopp_share
echo "leonis.datasci.danforthcenter.org:/shares/ctopp_share/ /shares/ctopp_share nfs4 rw,hard,intr,noatime,nodiratime 0 0" >> /etc/fstab
mount /shares/ctopp_share

# Install GUI & VNC
dnf groupinstall -y "Server with GUI" "GNOME" "Network File System Client" "Graphical Administration Tools" "Headless Management" "Scientific Support" "System Tools"
systemctl set-default graphical.target
systemctl isolate graphical.target

# Install base dependencies
dnf update -y
dnf install -y epel-release git wget gcc-c++ cmake python2 python36
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
rpm -ivh /shares/ctopp_share/data/repos/jdk/jdk-8u202-linux-x64.rpm
alternatives --set java /usr/java/jdk1.8.0_202-amd64/jre/bin/java
dnf install -y tigervnc-server tigervnc-server-module

echo 'alias startvnc="vncserver :93"' >> /home/tparker/.bashrc
echo 'alias killvnc="vncserver -kill :93"' /home/tparker/.bashrc
echo 'alias startvnc="vncserver :90"' >> /home/njiang/.bashrc
echo 'alias killvnc="vncserver -kill :90"' /home/njiang/.bashrc
echo 'alias startvnc="vncserver :5"' >> /home/ctopp/.bashrc
echo 'alias killvnc="vncserver -kill :5"' /home/ctopp/.bashrc
echo 'alias startvnc="vncserver :8"' >> /home/rsa-data/.bashrc
echo 'alias killvnc="vncserver -kill :8"' /home/rsa-data/.bashrc

systemctl start firewalld
firewall-cmd --permanent --add-port=5905/tcp
firewall-cmd --permanent --add-port=5908/tcp
firewall-cmd --permanent --add-port=5990/tcp
firewall-cmd --permanent --add-port=5993/tcp
firewall-cmd --reload

dnf install -y dconf
mkdir -pv /etc/dconf/db/local.d/
echo -e "[org/gnome/desktop/session]\nidle-delay=uint32 0\n\n[org/gnome/desktop/screensaver]\nlock-enabled=false" > /etc/dconf/db/local.d/00-screensaver
dconf update

echo -e "[Allow Colord all Users]\nIdentity=unix-user:*\nAction=org.freedesktop.color-manager.create-device;org.freedesktop.color-manager.create-profile;org.freedesktop.color-manager.delete-device;org.freedesktop.color-manager.delete-profile;org.freedesktop.color-manager.modify-device;org.freedesktop.color-manager.modify-profile\nResultAny=no\nResultInactive=no\nResultActive=yes\n\n[Allow Package Management all Users]\nIdentity=unix-user:*\nAction=org.debian.apt.*;io.snapcraft.*;org.freedesktop.packagekit.*;com.ubuntu.update-notifier.*\nResultAny=no\nResultInactive=no\nResultActive=yes" > /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla

git clone https://github.com/Topp-Roots-Lab/operations-scripts.git --branch master --single-branch
