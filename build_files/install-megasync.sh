#!/bin/bash

set -ouex pipefail

# https://github.com/ublue-os/main/blob/e55976282cf282b28a5c58e3754328e156aaf0c7/build_files/nvidia-install.sh#L18
dnf config-manager setopt rpmfusion-nonfree.enabled=1
dnf install -y megasync dolphin-megasync
dnf config-manager setopt rpmfusion-nonfree.enabled=0
