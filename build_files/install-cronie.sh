#!/usr/bin/sh

set -eoux pipefail

dnf install --assumeyes cronie

systemctl enable crond
