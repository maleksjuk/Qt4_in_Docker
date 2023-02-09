# Run Qt4 in Docker
Scripts for running a GUI application (using Qt4) in Docker. Docker image based on Ubuntu 18.04. You can write code in your favorite IDE and version of Ubuntu!

## Requirements
- Linux
- Docker

## Run
0. Prepare project

Add project files to _workspace/project_.
Add paths to executable files and libraries in _workspace/start.sh_.
Change command for running application (instead of bash)

1. Create docker image
```sh
docker build -t <image> .
```

Example:
```sh
docker build -t qt4-image .
```

2. Run application
```sh
./docker-run.sh [--name <container name>] <image name> [<executable file>]
```

Example:
```sh
./docker-run.sh qt4-image
```
or
```sh
./docker-run.sh --name my-app qt4-image RunApp
```
