#!/usr/bin/bash

cd /home/benny/Data/Configs/etc

for pkg in *
do
   stow -t /etc $pkg
done
