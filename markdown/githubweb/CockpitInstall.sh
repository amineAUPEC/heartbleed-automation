#!/bin/bash
apt upgrade -y > /dev/null
if [ $? -eq 0 ]
then
    echo "Success.Packages Upgraded"
else
    echo "Failure.. Verify Commands"
fi
apt full-upgrade -y > /dev/null 2>&1
if [ $? -eq 0 ]
then
    echo "Success. full-upgrade"
else
    echo "Failure.. Do Failure action"
fi
apt install cockpit -y > /dev/null 2>&1
if [ $? -eq 0 ]
then
    echo "Success. Cockpit Installed Successfully"
else
    echo "Failure.. Do Failure action"
fi
systemctl enable --now cockpit.socket

systemctl status cockpit

exit 0
