#!/bin/bash -e

echo "[SWARMHACK] git clone https://github.com/yorkrobotlab/pi-puck.git ${ROOTFS_DIR}/home/${FIRST_USER_NAME}/pi-puck"
git clone https://github.com/yorkrobotlab/pi-puck.git "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/pi-puck"
echo "[SWARMHACK] git clone https://github.com/yorkrobotlab/pi-puck-e-puck1.git ${ROOTFS_DIR}/home/${FIRST_USER_NAME}/pi-puck-e-puck1"
git clone https://github.com/yorkrobotlab/pi-puck-e-puck1.git "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/pi-puck-e-puck1"

echo "[SWARMHACK] pip3 install vl53l1x pipuck websockets"
on_chroot << EOF
yes | pip3 install vl53l1x pipuck websockets
EOF

install -m 644 files/pipuck_server.conf "${ROOTFS_DIR}/etc/supervisor/conf.d/"
install -m 755 files/pipuck_server.sh "${ROOTFS_DIR}/home/pi/"
install -m 755 files/pipuck_server.py "${ROOTFS_DIR}/home/pi/"
