#!/bin/bash

set -eoux pipefail

dnf copr enable lihaohong/yazi
dnf install -y yazi
dnf copr disable lihaohong/yazi
