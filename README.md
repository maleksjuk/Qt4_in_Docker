# Run Qt4 in Docker
Scripts for running a GUI application (using Qt4) in Docker. Docker image based on Ubuntu 18.04

## Requirements
- Linux
- Docker

## Run
1. Create docker image
```sh
./docker-build.sh my-app
```

2. Run application
```sh
./docker-run.sh [--name <container name>] <image name> <executable file>
```

Example:
```sh
./docker-run.sh qt4-app app
```
or
```sh
./docker-run.sh --name my-app qt4-app ./bin/app
```
