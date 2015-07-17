#!/bin/bash
set -e

if [ ! -d /home/jeff/app/.git ]; then
	echo "Cloning your repository...."
	git clone $REPO /home/user/app
	cd /home/user/app
	npm install && bower install --config.interactive=false && gulp watch --test
else
	echo "Building and serving site..."
	cd /home/user/app
	gulp watch --test
fi
