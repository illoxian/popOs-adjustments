#!/bin/bash
echo "Modifing /etc/pulse/default.pa with the fix"
file="/etc/pulse/default.pa"
#sudo sed -i '/![^#]/ s/\(^.*cork.*$\)/#\1/' $file
sed -i '/.*cork/s/^/#/' $file
echo "Done. You now need to reboot"
