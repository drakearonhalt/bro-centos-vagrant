#!/bin/bash


# install epel
yum install -y epel-release deltarpm wget git vim-enhanced
# yum update -y
# required dependencies
yum install -y cmake make gcc gcc-c++ flex bison libpcap-devel openssl-devel python-devel swig zlib-devel
# optional dependencies
yum install -y GeoIP GeoIP-devel GeoIP-update gperftools-libs gperftools-devel 
# get libcaf for bro broker
cd /etc/yum.repos.d/
wget http://download.opensuse.org/repositories/devel:libraries:caf/CentOS_7/devel:libraries:caf.repo
yum install -y caf caf-devel
# get bro
cd /home/vagrant; git clone --recursive git://git.bro.org/bro

# deps for binpac quickstart
yum install -y python-docopt python-jinja2

# get binpac-quickstart
cd /home/vagrant
git clone https://github.com/grigorescu/binpac_quickstart.git

cd /home/vagrant/bro
./configure
make

