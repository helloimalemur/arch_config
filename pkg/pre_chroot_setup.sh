#!/bin/bash
pacstrap /mnt base base-devel linux linux-firmware nano dhclient
genfstab -U /mnt >> /mnt/etc/fstab

