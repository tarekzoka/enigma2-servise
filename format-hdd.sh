#!/bin/bash
#
umount /dev/sda1
sleep 2
mkfs.ext4 /dev/sda1
sleep 2
mount /dev/sda1 /media/hdd
sleep 1
mkdir /media/hdd/movie
chmod 777 /media/hdd/movie
sleep 1
umount /dev/sda1 
sleep 2
e2fsck -f -y -v -C 0 '/dev/sda1' 
sleep 1
resize2fs -p '/dev/sda1' 
sleep 1
mount /dev/sda1 /media/hdd

exit




