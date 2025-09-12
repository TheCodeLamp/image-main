#!/bin/bash

set -oue pipefail

# Update
echo "::group:: Update"
/ctx/update-stage.sh
echo "::endgroup::"

# Remove packages
echo "::group:: Remove packages"
/ctx/remove-packages.sh
echo "::endgroup::"

# Install packages
/ctx/install-stage.sh

# Generate initramfs
echo "::group:: Generate initramfs"
/ctx/generate-initramfs.sh
echo "::endgroup::"

# Cleanup
echo "::group:: Cleanup"
/ctx/cleanup-stage.sh
echo "::endgroup::"

