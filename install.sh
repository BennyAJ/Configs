#!/usr/bin/bash

cd /home/benny/Data/Configs/home

for pkg in *
do
   stow -t /home/benny $pkg
done

cd /home/benny/Data/Configs/etc

for pkg in *
do
   stow -t /etc $pkg
done
