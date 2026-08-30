#!/bin/sh

set -exu

cleanup() {
  truncate -s 0 /var/log/syslog
  rm -rf /tmp/*
}

cleanup
