#!/bin/sh

# Necessary because squid forks itself to an unprivileged process.
chown -R proxy.proxy /cachedir
chown proxy.proxy /dev/stdout

. /usr/share/squid-deb-proxy/init-common.sh
pre_start
post_start
/usr/sbin/squid3 -N -f /etc/squid-deb-proxy/squid-deb-proxy.conf
