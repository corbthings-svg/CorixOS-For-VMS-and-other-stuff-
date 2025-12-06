#!/bin/bash
set -e
# configure live-build
sudo lb config --debian-installer live \
               --archive-areas "main contrib non-free" \
               --bootappend-live "boot=live components" \
               --zstd --backports true \
               --iso-application "CorixOS" \
               --iso-volume "CORIXOS_A1"
# copy overlay into chroot
sudo cp -a ../overlay/* config/includes.chroot/
sudo lb build
sudo mv live-image-amd64.hybrid.iso CorixOS.iso
echo "ISO ready: live/CorixOS.iso"
