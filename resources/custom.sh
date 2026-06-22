#!/bin/sh

set -exu

# Add your additional provisioning here for custom VM images.
sed -i 's|r1beta5|master|g' /system/settings/package-repositories/Haiku
pkgman refresh
pkgman full-sync -y
pkgman install -y rust_bin
