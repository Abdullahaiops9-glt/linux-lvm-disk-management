#!/bin/bash

lsblk
fdisk /dev/sdb
pvcreate /dev/sdb1
vgcreate my_vg /dev/sdb1
lvcreate -L 1G -n my_lv my_vg
mkfs.ext4 /dev/my_vg/my_lv
mkdir /data
mount /dev/my_vg/my_lv /data
df -h
