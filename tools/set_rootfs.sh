#!/bin/bash

USER=ubuntu
HOSTNAME=raspi #e.g: 192.168.X.X

#Step.1: Copy files
rsync -rl --delete-after --info=progress2  $USER@$HOSTNAME:/{lib,usr,opt,etc} ../rootfs/

#Step.2: Replace rootfs abosulted path to related path
./fixQualifiedLibraryPaths ../rootfs ../cross_compiler/bin/arm-linux-gnueabihf-gcc
