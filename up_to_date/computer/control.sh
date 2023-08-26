#!/bin/bash

sudo apt -y update
sudo apt -y upgrade

if test -f "/var/run/reboot-required.pkgs"; then
  echo "There are security updates to install, will reboot"
  sudo shutdown -r now
fi
