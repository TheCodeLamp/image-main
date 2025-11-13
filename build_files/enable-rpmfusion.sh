#!/bin/bash

set -eoux pipefail

# Free
dnf install --assumeyes https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# Nonfree
dnf install --assumeyes https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Disable them. Enable only when needed for an install.
dnf config-manager setopt "rpmfusion*".enabled=0
