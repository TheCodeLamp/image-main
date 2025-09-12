#!/usr/bin/sh

set -oue pipefail

# Install Mullvad
echo "::group:: Install Mullvad"
/ctx/install-mullvad.sh
echo "::endgroup::"

# Install Megasync
echo "::group:: Install Megasync"
/ctx/install-megasync.sh
echo "::endgroup::"

# Install Nushell
echo "::group:: Install Nushell"
/ctx/install-nushell.sh
echo "::endgroup::"

# Install LibreWolf
echo "::group:: Install LibreWolf"
/ctx/install-librewolf.sh
echo "::endgroup::"

# Install FirefoxPWA
echo "::group:: Install FirefoxPWA"
/ctx/install-PWAsForFirefox.sh
echo "::endgroup::"

# Install Misc
echo "::group:: Install Misc"
/ctx/install-misc.sh
echo "::endgroup::"

## Install Fonts
echo "::group:: Install Fonts"
/ctx/install-fonts.sh
echo "::endgroup::"

