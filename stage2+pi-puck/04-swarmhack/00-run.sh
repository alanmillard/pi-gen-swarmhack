#!/bin/bash -e

git clone https://github.com/yorkrobotlab/pi-puck.git "${ROOTFS_DIR}/home/pi"
git clone https://github.com/yorkrobotlab/pi-puck-e-puck1.git "${ROOTFS_DIR}/home/pi"
pip3 install pipuck
