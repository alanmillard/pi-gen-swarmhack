#!/bin/bash -e

git clone https://github.com/yorkrobotlab/pi-puck.git "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/pi-puck"
git clone https://github.com/yorkrobotlab/pi-puck-e-puck1.git "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/pi-puck-e-puck1"
yes | pip3 install pipuck
