#!/bin/bash

set -oue pipefail

cd /ctx

# Update
echo "::group:: Update"
./update-stage.sh
echo "::endgroup::"

# Remove packages
echo "::group:: Remove packages"
./remove-packages.sh
echo "::endgroup::"

# Install packages
./install-stage.sh

# Generate initramfs
echo "::group:: Generate initramfs"
./generate-initramfs.sh
echo "::endgroup::"

# Cleanup
echo "::group:: Cleanup"
./cleanup-stage.sh
echo "::endgroup::"

