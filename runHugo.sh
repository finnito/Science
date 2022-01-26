#!/usr/bin/env bash

source ~/.profile

dest=~/Sites/public.putaiao.nz/

hugo server \
	--cleanDestinationDir \
	--disableFastRender \
	--forceSyncStatic \
	--renderToDisk \
	--gc \
	--noHTTPCache \
	--destination="$dest" \
	--baseURL=http://putaiao.test \
	--appendPort=true
