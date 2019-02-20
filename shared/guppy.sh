# Archive
tar -xf ont-guppy-cpu_xxx_linux64.tar.gz



sudo apt-get update 
  sudo apt-get install wget lsb-release 
  export PLATFORM=$(lsb_release -cs) 
  wget -O- https://mirror.oxfordnanoportal.com/apt/ont-repo.pub | sudo apt-key add - 
  echo "deb http://mirror.oxfordnanoportal.com/apt ${PLATFORM}-stable non-free" | sudo tee /etc/apt/sources.list.d/nanoporetech.sources.list 
  sudo apt-get update

# Deb installation
apt-get install ont-guppy[-cpu]  
  
  
# CentOS 
# In case it's missing its library
yum install epel-release

  yum install <path>/<to>/ont-guppy[-cpu]_xxx.rpm