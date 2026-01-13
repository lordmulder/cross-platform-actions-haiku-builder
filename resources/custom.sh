#!/bin/sh

set -exu

# Add your additional provisioning here for custom VM images.
pkgman refresh
pkgman update -y
pkgman install -y rust_bin
