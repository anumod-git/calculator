#!/bin/bash
INTERNAL_HOST_IP=$(ip route show default | awk '/default/ {print $3}')
URL = ${INTERNAL_HOST_IP}:8765/sum?a=1\&b=2 
URL=${URL%$'\r'}
echo ${URL}                          
test $(curl $URL) -eq 3
#test $(curl localhost:8765/sum?a=1\&b=2) -eq 3
#echo "testing............"
