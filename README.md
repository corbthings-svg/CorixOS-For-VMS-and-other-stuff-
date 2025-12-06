# CorixOS – a lightweight Debian-based live Linux distro

![Build](https://github.com/corbthings-svg/CorixOS-For-VMS-and-other-stuff/actions/workflows/build.yml)

## Download latest ISO
Grab the ready-to-boot ISO from [Releases](https://github.com/corbthings-svg/releases).

## Build locally (Ubuntu/Debian)
```bash
sudo apt install live-build debootstrap squashfs-tools xorriso isolinux grub-pc-bin grub-efi-amd64-bin ovmf python3-pyqt5 flatpak
./build.sh
