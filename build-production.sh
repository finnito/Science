#!/usr/bin/env bash

cd /srv/putaiao.nz/
git stash
git pull origin master
git checkout master
bash build.sh