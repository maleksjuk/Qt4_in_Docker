#!/bin/bash

PATH=$PATH:/project

if [[ -n "$XAUTH_2" && -n "$XAUTH_3" ]]
then
	xauth add "$DISPLAY" "$XAUTH_2" "$XAUTH_3"
fi

exec "$@"
