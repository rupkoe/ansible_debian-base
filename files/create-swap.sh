#!/bin/sh

##
##   Creates a single swapfile and enables it as swap space
##

# create swap file
fallocate -l 1.5G /var/swapfile

# secure swapfile
chown root:root /var/swapfile
chmod 0600 /swapfile

# enable swap
mkswap /var/swapfile
swapon /var/swapfile

# add swap to /etc/fstab
echo "\n/var/swapfile  swap  swap  0  0" >> /etc/fstab
