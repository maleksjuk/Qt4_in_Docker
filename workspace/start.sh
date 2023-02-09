#!/bin/bash
set -e

if [[ -n "$XAUTH_2" && -n "$XAUTH_3" ]]
then
	xauth add "$DISPLAY" "$XAUTH_2" "$XAUTH_3"
fi


# Change 'project' to your project name or use default path
PROJECT_DIR=/workspace/project

if [[ -d $PROJECT_DIR ]]
then
	qmake $PROJECT_DIR && make -C $PROJECT_DIR
else
	echo "Directory '$PROJECT_DIR' not exists"
	exit 1
fi

# Add path to application
PATH=$PATH:$PROJECT_DIR

# Add path to libraries of application
LD_LIBRARY_PATH=$PROJECT_DIR
export LD_LIBRARY_PATH

if [[ -n "$@" ]]
then
	exec "$@"
else
	# Change 'bash' to application
	exec bash 
fi
