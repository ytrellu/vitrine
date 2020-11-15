#!/bin/bash
# "Reason:.*Connection refused" would mean that the port is opened, but the service is not running


PCT_OUTPUT=$(curl --silent --data 'port=80&submit=Check+your+port' https://www.portchecktool.com)

if echo $PCT_OUTPUT | grep -q "Reason:.*Connection timed out";
then
  echo "Connection timed out on port 80." 1>&2
  echo "Are firewalls & port-forwarding correctly configured on your modem?"
  exit 1
fi

if echo $PCT_OUTPUT | grep -q "Reason:.*Connection refused";
then
  echo "Connection refused on 80." 1>&2
  echo "Controlling for the http_networked property.."
  ./http_networked/control.sh
  exit 0
fi

echo "Port 80 is opened to the public and accepts connections"
