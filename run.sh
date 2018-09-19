#!/bin/bash

HOSTNAME=`hostname`

git -C unisrt pull
git -C Flange pull

sudo service supervisor start
sudo service lldpd start -i eth0 

echo "Flange  : `hostname --ip-address`"

# Start flanged, configured by conf file. Mount it to container for more flexible configuation.
#flanged -c '/etc/flanged/flanged_conf.ini'


tail -f /var/log/flanged.log
