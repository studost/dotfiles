#!/usr/bin/env bash
# studo, 2017_12_14
# install_wsl.sh
# Changelog:
# 2017_12_14, studo, initial version
# 
APT=$(which apt-get)
ECHO=$(which echo)
WGET=$(which wget)
DPKG=$(which dpkg)
SCTL=$(which systemctl)
TIMECTL=$(which timedatectl)
ENABLE="$SCTL enable "
UPDATE="$APT update"
INSTALL="$APT install -y "
ADD="add-apt-repository -y "
DPKG="$DPKG -i"

# steps from Dockerfile
$INSTALL software-properties-common
$INSTALL wget

# moscli
#if [[ ! -f /etc/apt/sources.list.d/monitos-cli-master.list ]] ; then
#    $ECHO 'deb [trusted=yes] http://deb.freicon.swarmcloud.de/monitos cli-master main' > /etc/apt/sources.list.d/monitos-cli-master.list
# fi


$UPDATE

$TIMECTL set-timezone Europe/Berlin

# basics
$INSTALL openssh-server
$INSTALL systemd
$INSTALL software-properties-common
#$INSTALL redis-server
#$INSTALL nodejs
#$INSTALL nodejs-legacy
$INSTALL unzip
$INSTALL curl
#$INSTALL rrdtool
#$INSTALL acl
#$INSTALL npm

# tools
$INSTALL vim
$INSTALL exuberant-ctags
$INSTALL mc
$INSTALL git
$INSTALL sudo
#$INSTALL libstdc++5
#$INSTALL dpkg-dev
$INSTALL dos2unix
$INSTALL tmux
$INSTALL git
$INSTALL tree
$INSTALL p7zip-full

# nginx
#$INSTALL nginx
#$INSTALL nginx-doc
#$INSTALL libgd-tools
#$INSTALL fcgiwrap
#$INSTALL ssl-cert

# MySQL / MariaDB
#$INSTALL mariadb-server-10.0
# mysql_secure_installation nach Installation ausfuehren

# SNMP
$INSTALL snmp
$INSTALL snmp-mibs-downloader
# command download-mibs


# Perl module
$INSTALL libsnmp-perl
$INSTALL libnet-snmp-perl
$INSTALL libjson-perl
$INSTALL libxml-simple-perl

# Python-sphinx
$INSTALL python-sphinx
$INSTALL texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended 
$INSTALL pandoc

# Effing package manager / FPM
$INSTALL build-essential ruby-dev
# /mnt/c/projects/github/
# git clone https://github.com/jordansissel/fpm
# sudo gem install fpm
# fpm

