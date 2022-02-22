#!/usr/bin/env zsh

source ~/.zshrc

dest=~/Sites/public.putaiao.nz/

hugo server \
	--disableFastRender \
	--forceSyncStatic \
	--renderToDisk \
	--noHTTPCache \
	--destination="$dest" \
	--appendPort=true
