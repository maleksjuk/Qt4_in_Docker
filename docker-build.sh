#!/bin/bash
if [[ -n "$@" ]]
then
	docker build -t $@ .
else
	echo "usage: ./docker-build.sh <image>"
fi
