#!/bin/bash
INTERNAL_HOST_IP=$(ip route show default | awk '/default/ {print $3}')
#INTERNAL_HOST_IP = $INTERNAL_HOST_IP:8765/sum?a=1\&b=2 
#INTERNAL_HOST_IP=${INTERNAL_HOST_IP%$'\r'}
echo $INTERNAL_HOST_IP                        
#test $(curl $INTERNAL_HOST_IP) -eq 3
test $(curl 172.17.0.1:8765/sum?a=1\&b=2) -eq 3
#echo "testing............"
