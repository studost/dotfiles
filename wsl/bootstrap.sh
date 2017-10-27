#!/usr/bin/env bash
# studo, 2017_10_27
# bootstrap.sh
# Changelog:
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

# $INSTALL software-properties-common
# $UPDATE
# $TIMECTL set-timezone Europe/Berlin

# basics
# $INSTALL openssh-server
# $INSTALL systemd
# $INSTALL software-properties-common
# $INSTALL redis-server
# $INSTALL nodejs
# $INSTALL nodejs-legacy
# $INSTALL unzip
# $INSTALL curl
# $INSTALL rrdtool
# $INSTALL acl
# $INSTALL npm

# tools
# $INSTALL vim
# $INSTALL wget
# $INSTALL git
# $INSTALL sudo
# $INSTALL libstdc++5
# $INSTALL dpkg-dev
# $INSTALL dos2unix

# command download-mibs
$INSTALL libsnmp-perl
$INSTALL libjson-perl

# Perl module
$INSTALL libxml-simple-perl                                         # notifications / isms.pl

# check_wmi_plus.pl
$INSTALL libnumber-format-perl
$INSTALL libconfig-inifiles-perl



# Print additional infos
$ECHO "
Have al lot of fun...
"
