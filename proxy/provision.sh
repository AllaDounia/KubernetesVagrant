#!/bin/bash

/usr/bin/apt-get -y install haproxy

cat > /etc/default/haproxy <<EOD
# Set ENABLED to 1 if you want the init script to start haproxy.
ENABLED=1
# Add extra flags here.
#EXTRAOPTS="-de -m 16"
EOD

cp -f /tmp/haproxy.cfg /etc/haproxy/haproxy.cfg
/usr/sbin/service haproxy restart