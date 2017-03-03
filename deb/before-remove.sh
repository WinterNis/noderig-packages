#!/bin/bash
if ! systemctl | grep "\-.mount"
then
    /etc/init.d/noderig stop
    update-rc.d -f noderig remove
fi