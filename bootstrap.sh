#!/bin/sh
#--loglevel debug
/usr/bin/flexget -c /config/config.yml daemon start --daemonize

while true; do sleep 1000; done
