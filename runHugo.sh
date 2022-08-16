#!/usr/bin/env zsh

source ~/.zshrc

dest="$HOME/Sites/public.putaiao.nz/"

hugo server \
	--disableFastRender \
	--renderToDisk \
	--noHTTPCache \
	--destination="$dest" \
	--appendPort=true
