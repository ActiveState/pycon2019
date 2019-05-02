# Getting Rid of Developer Pain Points
## PyCon 2019

Thanks for attending ActiveState's PyCon 2019 workshop. Here are all the things you need to get started:

## Platform Account

Sign up for your free ActiveState Platform account here: https://platform.activestate.com

## Install the State Tool

You can install the State Tool by running the following command on Linux:

`sh <(curl -q https://platform.activestate.com/dl/cli/install.sh)`

Alternately, follow the Docker instructions below to build a docker image with the State Tool already installed.

## Auto-Fork the ActivePython 3.6.6 Project

https://platform.activestate.com/ActiveState/ActivePython-3.6/auto-fork

## Real World Project Setup

The project we're using as our real-world example is:

https://github.com/ActiveState/tensorflask

## Docker

If you're running on a platform other than Linux and have docker installed, here are the instructions on how to build the provided Dockerfile: 

`docker build -t activestate/state-tool --no-cache .`

If you want to run the above demo project, you can use:

`docker run -it --network="host" -p 8000:8000 activestate/state-tool`
