#!/bin/bash

# load drivers
sudo modprobe uio
sudo insmod ${RTE_SDK}/${RTE_TARGET}/kmod/igb_uio.ko

# setup hugepages
mount -t hugetlbfs -o pagesize=1G nodev /mnt/huge

# bind eth1 interface to DPDK drivers
sudo ${RTE_SDK}/usertools/dpdk-devbind.py --bind=igb_uio eth1

# bring up eth2
sudo ifconfig eth2 up

