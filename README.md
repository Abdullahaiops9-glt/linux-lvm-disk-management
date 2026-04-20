# 💽 Linux LVM Setup Project

## 🎯 Overview
This project demonstrates disk partitioning and LVM setup in Linux.Linux disk partitioning and LVM setup project demonstrating PV, VG, LV creation and storage management.
---

## 🎯 Objective
- Create disk partition
- Setup LVM (PV, VG, LV)
- Format and mount storage
- Verify working disk space

## ⚙️ Step 1: Check Available Disks
-- lsblk

## ⚙️ Step 2: Create Partition
-- fdisk /dev/sdb
# Inside:
n → new partition
p → primary
w → save

## ⚙️ Step 3: Create Physical Volume
pvcreate /dev/sdb1

## ⚙️ Step 4: Create Volume Group
vgcreate my_vg /dev/sdb1

## ⚙️ Step 5: Create Logical Volume
lvcreate -L 1G -n my_lv my_vg

## ⚙️ Step 6: Format Filesystem
mkfs.ext4 /dev/my_vg/my_lv

## ⚙️ Step 7: Mount Storage
mkdir /data
mount /dev/my_vg/my_lv /data

## ⚙️ Step 8: Verify
df -h

## 🎯 Final Result

✔ Disk partition created
✔ LVM configured (PV → VG → LV)
✔ Storage mounted and usable

## 💡 Simple Concept

LVM allows you to:
-- Combine multiple disks
-- Expand storage easily
-- Manage data without downtime

## 🚀 Conclusion
This project helped me understand Linux storage management used in real production systems.
