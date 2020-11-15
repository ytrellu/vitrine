#!/bin/bash

# Auditable property
# TODO solve the recursive directory loop (introspection/web_formatted/introspection/...)
# by using a better 'auditable' abstraction

DIR=$(dirname $(readlink -f $0))
AUDIT_LINK=/var/www/http_networked/introspection
sudo rm -f $AUDIT_LINK
sudo ln -s $DIR $AUDIT_LINK

echo $AUDIT_LINK
echo "created link to the vitrine's source code"

# TODO add automation of /introspection block in http_networked property
# TODO add git-hook to automatically run the controls
# TODO add git-hook to automatically push to github

