ltsp-image
==========

The aim is to have a ubuntu ltsp client, which behaves like an ordinary standalone 
ubuntu client. 

This is work in progress. Do not use it in production environment!


The basic idea is from http://github.com/opinsys/ltsp-laptop.git.


# Features

* No network is needed: user homes and login credentials are local 
* Local users can be added/removed.
* The ltsp image is updated in the background, while the system is running. The new 
  image will be applied at next boot.



# ToDo

* Automated installation of the base system
* Persistent cups support
* Persistent wlan support
* and much more...


# Issues

* The client needs network (dhcp) to boot. Though the running systen does not need
  a network connection.
* The first user must be installed manually
* The install.sh script is very crude
* and much more...
 


# Server Installation

These scripts are suited for Ubuntu 12.04, with the greek ltsp-pnp. They are 
to be applied at the 'master' installation, where the image is created:

* Install an Ubuntu 12.04 
* Install ltsp-pnp. Instructions are on
        https://help.ubuntu.com/community/UbuntuLTSP/ltsp-pnp
* Then :
    * ~# git clone https://github.com/basilstotz/ltsp-image
    * ~# cd ltsp-image
    * ~# ./install.sh
* Edit /etc/lts.conf to fit your needs: Specially set the IMAGE_SERVER and IMAGE_PATH variable
* use ltsp-make-image to generate a new image. (ltsp-make-image is just a wrapper
  around ltsp-update-image)



# Client Installation

* Install the base system using the instructions on
  http://labs.opinsys.com/blog/2014/01/31/how-to-boot-ltsp-client-from-harddrive-using-grub/
* Make the directories 'local' 'images' and 'home'
* Copy manualy an image ( eg. 000023.img) from the server to the directory images
* Copy the file 'version' to the directory images

