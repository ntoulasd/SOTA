#!/bin/bash
echo "Sota notification Running Ctrl+c to stop"  
while [ 1 ]; do           
txt=`curl -s http://old.sota.org.uk/RssFeed | grep title | grep -o '>[^<]*<' | grep -o '[^<>]*' | uniq | head -n 4 | egrep '(SY|SV)[0-9]'`

if [ -n "$txt" ] 
then
notify-send SOTA "$txt" --icon=notification-network-wireless-connected
fi
sleep 60
done
