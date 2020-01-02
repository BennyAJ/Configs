#!/usr/bin/bash

cd home

for pkg in *
do
   stow -t /home/benny $pkg
done
