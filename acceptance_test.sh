#!/bin/bash
INTERNAL_HOST_IP=$(ip route show default | awk '/default/ {print $3}')
echo ${INTERNAL_HOST_IP}                          
test $(curl 172.17.0.1:8765/sum?a=1\&b=2)
#test $(curl localhost:8765/sum?a=1\&b=2) -eq 3
#echo "testing............"
