#!/bin/bash -e

install -m 644 files/e-puck_id "${ROOTFS_DIR}/boot/"
install -m 644 files/pi-puck_id "${ROOTFS_DIR}/boot/"
install -m 644 files/hostname "${ROOTFS_DIR}/boot/"
install -m 644 files/wpa_supplicant.conf "${ROOTFS_DIR}/boot/"
