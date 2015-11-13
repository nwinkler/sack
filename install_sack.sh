#!/bin/bash
#
# @filename: install_sack.sh
# 
# @author Sampson L. Chen (sampson-chen / slchen)
# @date 2012-10-14
#
# @description:
# Sack auto-install script
# 
# @usage:
# run this script from where the git repo is cloned to.

# sack installation variables
sack__install_main=~/bin
sack__install_sackrc=~/
sack__install_cwd=$(pwd)

# If the install directory doesn't exist, create it
if [[ ! -d "$sack__install_main" ]]; then
    mkdir $sack__install_main
fi

# If ack is not installed, install it
if [[ `which ack | wc -l` -eq 0 ]]; then
    curl -L http://betterthangrep.com/ack-standalone > ~/bin/ack && chmod 0755 ~/bin/ack
fi

# No install script for ag, so let it be a TODO

cp $sack__install_cwd/sack $sack__install_main/
chmod +x $sack__install_main/sack
cp $sack__install_cwd/sag $sack__install_main/
chmod +x $sack__install_main/sag
cp $sack__install_cwd/.sackrc $sack__install_sackrc/
