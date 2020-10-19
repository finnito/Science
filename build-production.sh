#!/usr/bin/env bash

cd /srv/science.lesueur.nz/
git stash
git pull origin master
git checkout master
bash build.sh