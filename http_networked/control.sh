#!/bin/bash

sudo systemctl stop nginx > /dev/null 2>&1

if [ ! $? -eq 0 ]
then
  echo "nginx is not / incorrectly installed"
  exit 1
fi


SITE_NAME="http_networked"
DIR=$(dirname $(readlink -f $0))


if [ ! -d /var/www/$SITE_NAME ]
then
  echo "no directory named $SITE_NAME in /var/www/, creating new soft link"
  sudo ln -s $DIR/web_formatted /var/www/$SITE_NAME
fi


if [ ! -f /etc/nginx/sites-available/$SITE_NAME ]
then
  echo "no file named $SITE_NAME in sites-available, creating new soft link"
  sudo ln -s $DIR/nginx.config /etc/nginx/sites-available/$SITE_NAME
fi

echo "updating the enabled site"
sudo rm /etc/nginx/sites-enabled/*
sudo ln -s /etc/nginx/sites-available/$SITE_NAME /etc/nginx/sites-enabled/$SITE_NAME

sudo systemctl restart nginx
echo "web formatted content is now http networked."
