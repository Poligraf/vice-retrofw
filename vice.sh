#!/bin/sh
mkdir -p /home/retrofw/vice;
[ ! -f /home/retrofw/vice/snapshot.vsf ] && cp snapshot.vsfbackup /home/retrofw/vice/snapshot.vsf;
ln -sf  /home/retrofw/vice/snapshot.vsf .;


echo 2 > /proc/jz/alt;
echo 3 > /proc/jz/keyboard;

./x64 -eventsnapshotdir /home/retrofw/vice  "$@";

echo 0 > /proc/jz/alt;
echo 1 > /proc/jz/keyboard;
