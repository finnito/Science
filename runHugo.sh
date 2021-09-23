#!/usr/bin/env bash

source ~/.profile

hugo serve \
	--cleanDestinationDir \
	--disableFastRender \
	--forceSyncStatic \
	--gc \
	--noHTTPCache
