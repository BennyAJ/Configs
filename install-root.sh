#!/usr/bin/bash

cd etc

for pkg in *
do
   stow -t /etc $pkg
done
