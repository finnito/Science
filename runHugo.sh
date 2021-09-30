#!/usr/bin/env bash

source ~/.profile

dest=~/Sites/public.putaiao.nz/
echo "$dest"

hugo serve \
	--cleanDestinationDir \
	--disableFastRender \
	--forceSyncStatic \
	--gc \
	--noHTTPCache \
	--destination="$dest"
