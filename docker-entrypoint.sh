#!/bin/bash
set -e

if [ ! -d /home/user/app/.git ]; then
	echo "Cloning your repository...."
	git clone $REPO /home/user/app
	cd /home/user/app
	npm install && bower install --config.interactive=false && gulp watch --test
else
	echo "Building and serving site..."
	cd /home/user/app
	git pull -f
	gulp watch --test
fi
