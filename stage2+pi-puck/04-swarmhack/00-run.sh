#!/bin/bash -e

echo "[SWARMHACK] on_chroot start"

on_chroot << EOF
echo "[SWARMHACK] Cloning pi-puck git repo"
git clone https://github.com/yorkrobotlab/pi-puck.git "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/pi-puck"
echo "[SWARMHACK] Cloning pi-puck-e-puck1 git repo"
git clone https://github.com/yorkrobotlab/pi-puck-e-puck1.git "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/pi-puck-e-puck1"
echo "[SWARMHACK] Installing pipuck Python library"
yes | pip3 install pipuck
EOF

echo "[SWARMHACK] on_chroot end"
