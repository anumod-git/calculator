#!/bin/bash
INTERNAL_HOST_IP=$(ip route show default | awk '/default/ {print $3}')
test $(curl $INTERNAL_HOST_IP:8765/sum?a=1\&b=2)
#test $(curl localhost:8765/sum?a=1\&b=2) -eq 3
#echo "testing............"
