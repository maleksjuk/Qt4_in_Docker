#!/bin/bash
if [[ -n "$@" ]]
then
	docker run \
		--rm \
		-it \
		--net=host \
		-e DISPLAY \
		-e XAUTH_2=`xauth list | grep \`uname -n\` | awk '{print $2}'` \
		-e XAUTH_3=`xauth list | grep \`uname -n\` | awk '{print $3}'` \
		-v /tmp/.X11-unix \
		$@
else
	echo "usage: ./docker-run.sh [--name <container>] <image> <command>"
fi
