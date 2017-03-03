#!/bin/bash
if ! systemctl | grep "\-.mount"
then
    update-rc.d noderig defaults
    /etc/init.d/noderig start
fi