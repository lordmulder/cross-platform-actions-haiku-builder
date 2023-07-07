#!/bin/bash

# For some reason when executing a command over SSH (`ssh host ls`) SSH doesn't
# terminate. This script is used as a workaround. It's configured as
# `ForceCommand` in the sshd configuration file.

if test -n "${SSH_ORIGINAL_COMMAND// }"; then
  /bin/bash -c "$SSH_ORIGINAL_COMMAND"
  exit
else
  exec /bin/bash -i -l
fi
