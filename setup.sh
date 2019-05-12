#!/bin/bash

# load drivers
sudo modprobe uio
sudo insmod ${RTE_SDK}/${RTE_TARGET}/kmod/igb_uio.ko

# setup hugepages
mount -t hugetlbfs -o pagesize=1G nodev /mnt/huge

