#!/bin/bash -e

install -m 644 files/pi-puck.list "${ROOTFS_DIR}/etc/apt/sources.list.d/"
install -m 644 files/99pi-puck-cert "${ROOTFS_DIR}/etc/apt/apt.conf.d/"

on_chroot apt-key add - < files/pi-puck.gpg.key
on_chroot << EOF
apt-get update
apt-get dist-upgrade -y
EOF
