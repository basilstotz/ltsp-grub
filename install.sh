#!/bin/sh

# copy files
cp usr/bin/* /usr/bin/.
cp etc/init.d/* /etc/init.d/.
#cp etc/lts.conf /etc/.

# sysvinit
#update-rc.d ltsp-localsetup defaults

# install apache2
#apt-get --yes install apache2
#cp etc/apache2/conf.d/* /etc/apache2/conf.d/.
#service apache2 restart

exit
