#!/bin/bash
#
umount /dev/sda1 
sleep 2
e2fsck -f -y -v -C 0 '/dev/sda1' 
sleep 1
resize2fs -p '/dev/sda1' 
sleep 1
mount /dev/sda1 /media/hdd

exit





