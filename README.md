# unms
Workaround for Ubiquiti UNMS on Fedora

Out of the box UNMS (which is really cool by the way,  is only supported on Debian/Ubuntu variants) is not supported on Fedora.
The unms installer fails due to the docker service not being available during its install script - I wrote this simple hacky script to enable the unms installer to continue.

In terminal do:

sudo su -

Chmod +x the install.sh and run using ./install.sh


The only interaction required is to say yes or no when you get the prompt:

"Our distribution 'fedora 27' is not supported.
We recommend that you install UNMS on Ubuntu 16.04, Debian 8 or newer.
Would you like to continue with the installation anyway? [y/N]"

Just hit y then browse to https://yourIP

