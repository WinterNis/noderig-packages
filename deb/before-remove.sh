#!/bin/bash
INSTALLED=$(pidof systemd && echo "systemd" || echo "other")
if [ "$INSTALLED" != "other" ]
then
    systemctl stop noderig
else
    /etc/init.d/noderig stop
    update-rc.d -f noderig remove
fi