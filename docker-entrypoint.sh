#!/bin/bash
set -e
git clone $REPO /home/jeff/app
cd /home/jeff/app
npm install && bower install --config.interactive=false && gulp watch --test
