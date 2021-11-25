#!/bin/bash

# Using Raspberry Pi Imager, write Raspberry Pi OS Lite onto SD card using
# SD Card adapter
# `touch ssh` in base directory of sd card
# Insert SD card into raspberry pi and power on. Wait ~ 10min
# ssh pi@raspberrypi with password 'raspberry'
# `sudo raspi-config`, and change password for pi user

# sudo without password
# sudo visudo
# username  ALL=(ALL) NOPASSWD:ALL


DIR="/media/master"
SLAVE_MNT="UUID=343A41003A40C09A	/media/slave	ntfs-3g	defaults	0	0"
MASTER_MNT="UUID=62CEFEFBCEFEC677	/media/master	ntfs-3g	defaults	0	0"

if [ -d "$DIR" ] && [ "$(ls -A $DIR)" ]
then
  echo "master drive already mounted"
else
  # sudo bash -c "echo $SLAVE_MNT >> /etc/fstab"
  # sudo bash -c "echo $MASTER_MNT >> /etc/fstab"
  # sudo mount -a   # to test
  sudo mount -t cifs -o username=yoann,vers=1.0 //192.168.1.1/StorageHDD /media/master
fi

sudo apt -y update

sudo apt -y upgrade

if test -f "/var/run/reboot-required.pkgs"; then
  echo "There are security updates to install, will reboot"
  sudo shutdown -r now
fi
