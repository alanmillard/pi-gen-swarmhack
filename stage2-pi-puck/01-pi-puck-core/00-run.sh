#!/bin/bash -e

cat files/config.txt >> "${ROOTFS_DIR}/boot/config.txt"
install -m 644 files/i2c-dev.conf "${ROOTFS_DIR}/etc/modules-load.d/"
