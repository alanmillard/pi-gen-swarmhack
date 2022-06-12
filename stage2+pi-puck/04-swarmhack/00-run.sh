#!/bin/bash -e

echo "[SWARMHACK] git clone https://github.com/yorkrobotlab/pi-puck.git ${ROOTFS_DIR}/home/${FIRST_USER_NAME}/pi-puck"
git clone https://github.com/yorkrobotlab/pi-puck.git "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/pi-puck"
echo "[SWARMHACK] git clone https://github.com/yorkrobotlab/pi-puck-e-puck1.git ${ROOTFS_DIR}/home/${FIRST_USER_NAME}/pi-puck-e-puck1"
git clone https://github.com/yorkrobotlab/pi-puck-e-puck1.git "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/pi-puck-e-puck1"
echo "[SWARMHACK] pip3 install vl53l1x pipuck websockets"
on_chroot << EOF
yes | pip3 install vl53l1x pipuck websockets
EOF
