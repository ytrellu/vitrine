#!/bin/bash

if [ ! $(which certbot) ]
then
  echo "could not find the certbot executable, now installing before executing it"
  sudo apt-get install software-properties-common 
  sudo add-apt-repository ppa:certbot/certbot
  sudo apt-get update
  sudo apt-get install python3-certbot-nginx
  sudo certbot --nginx certonly
fi

sudo certbot renew --post-hook "systemctl reload nginx"
