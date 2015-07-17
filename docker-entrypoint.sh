#!/bin/bash
set -e

if [ -d /home/jeff/app/.git]; then
	git clone $REPO /home/user/app
	cd /home/user/app
	npm install && bower install --config.interactive=false && gulp watch --test
else
	cd /home/user/app
	gulp watch --test
fi
