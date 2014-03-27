ltsp-image
==========

The aim is to have an "ordinary" computer/laptop using an ltsp image.

You need an (external) update web server, where the new images are stored for download.

Features:

* The image is updated in the background, while the system is running. The new 
  image will be applied at next boot.

* Local users can be added/removed. The home directory is local.

* Ldap users can login. The home directory is mounted via nfs.


ToDo:

* Persistent cups support
* Persistent wlan support



These scripts are suited for Ubuntu 12.04, with the greek ltsp-pnp. They are 
to be applied at the 'master' installation, where the image is created.