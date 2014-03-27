#!/bin/sh
cp usr/bin/* /usr/bin/.

cp etc/init.d/* /etc/init.d/.
update-rc.d ltsp-localsetup defaults

apt-get --yes install apache2
cp etc/apache2/conf.d/* /etc/apache2/conf.d/.
service apache2 restart

cp etc/lts.conf /etc/lts.conf

cp etc/adduser.conf /etc/adduser.conf

exit
