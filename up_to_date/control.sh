#!/bin/bash

DIR=$(dirname $(readlink -f $0))

echo "DIR=$DIR" | cat - crontab.config | crontab -
