#!/bin/bash

DOMAIN="ytrellu.com"
HOST_NAME="@"
LOG_DEST="local7.info"

CURRENT_IP=`curl -s "https://api.ipify.org"`
DNS_DATA=`curl -s -X GET -H "Authorization: sso-key ${GO_DADDY_API_KEY}:${GO_DADDY_API_SECRET}" "https://api.godaddy.com/v1/domains/${DOMAIN}/records/A/${HOST_NAME}"`
STORED_IP=`echo $DNS_DATA | cut -d ',' -f 1 | tr -d '"' | cut -d ":" -f 2`

echo "`date '+%Y-%m-%d %H:%M:%S'` - Current External IP is $CURRENT_IP, GoDaddy DNS IP is $STORED_IP"

if [ "$STORED_IP" != "$CURRENT_IP" ]; then
	  echo "IP has changed!! Updating on GoDaddy"
    curl -s -X PUT "https://api.godaddy.com/v1/domains/${DOMAIN}/records/A/${HOST_NAME}" \
         -H "Authorization: sso-key ${GO_DADDY_API_KEY}:${GO_DADDY_API_SECRET}" \
         -H "Content-Type: application/json" \
         -d "[{\"data\": \"${CURRENT_IP}\"}]"
	  logger -p $LOG_DEST "Changed IP on ${hostname}.${DOMAIN} from ${STORED_IP} to ${CURRENT_IP}"
fi
