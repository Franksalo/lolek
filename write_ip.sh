#!/bin/bash
PRIVATE_IP=$(awk 'END{print $1}' /etc/hosts)
RANDOM_ID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 5 | head -n 1)
curl -L -X PUT http://$ETCD_IP:2379/v2/keys/hosts/lolek/${RANDOM_ID} -d value="${PRIVATE_IP}"
service nginx start
tail -f /dev/null