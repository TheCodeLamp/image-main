#!/usr/bin/sh

set -oue pipefail

# Install Cronie
echo "::group:: Install Cronie"
./install-cronie.sh
echo "::endgroup::"

# Install Mullvad
echo "::group:: Install Mullvad"
./install-mullvad.sh
echo "::endgroup::"

# Install Megasync
echo "::group:: Install Megasync"
./install-megasync.sh
echo "::endgroup::"

# Install Nushell
echo "::group:: Install Nushell"
./install-nushell.sh
echo "::endgroup::"

# Install LibreWolf
echo "::group:: Install LibreWolf"
./install-librewolf.sh
echo "::endgroup::"

# Install FirefoxPWA
echo "::group:: Install FirefoxPWA"
./install-PWAsForFirefox.sh
echo "::endgroup::"

# Install Misc
echo "::group:: Install Misc"
./install-misc.sh
echo "::endgroup::"

## Install Fonts
echo "::group:: Install Fonts"
./install-fonts.sh
echo "::endgroup::"

