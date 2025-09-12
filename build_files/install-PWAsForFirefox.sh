#!/bin/bash

set -eoux pipefail

latest_tag=$(curl -s "https://api.github.com/repos/filips123/PWAsForFirefox/tags" | grep -oP '"name": "v\K.*?(?=")' | head -n 1)

url=$"https://github.com/filips123/PWAsForFirefox/releases/download/v$latest_tag/firefoxpwa-$latest_tag-1.x86_64.rpm"

file="/tmp/firefoxpwa.rpm"
curl -L -o $file $url
dnf install --assumeyes $file
rm $file
