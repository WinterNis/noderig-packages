#!/bin/bash
INSTALLED=$(pidof systemd && echo "systemd" || echo "other")
if [ "$INSTALLED" != "other" ]
then
    systemctl daemon-reload
    systemctl start noderig
else
    update-rc.d noderig defaults
    /etc/init.d/noderig start
fi