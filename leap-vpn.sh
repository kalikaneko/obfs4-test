#!/bin/sh
sudo openvpn \
    --verb 3 \
    --tls-cipher DHE-RSA-AES128-SHA \
    --cipher AES-128-CBC \
    --dev tun --client --tls-client \
    --remote-cert-tls server --tls-version-min 1.2 \
    --ca /tmp/ca.crt --cert /tmp/cert.pem --key /tmp/cert.pem \
    --proto tcp4 \
    --remote localhost 4430 \
    --route $GW 255.255.255.255 net_gateway \
    --persist-tun
