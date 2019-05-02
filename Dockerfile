FROM ubuntu:18.04
LABEL maintainer "ActiveState"

ARG DOWNLOAD_DIR=/opt/state-tool

RUN echo "\n\nUpdating system and installing pre-requisites\n" && \
    apt update -y && apt upgrade -y && \
    apt install -y libgomp1 wget git curl vim

RUN mkdir -p ${DOWNLOAD_DIR}
WORKDIR ${DOWNLOAD_DIR}
RUN echo "\n\nDownloading Latest State Tool\n" && \
    wget -O install.sh https://platform.activestate.com/dl/cli/install.sh && \
    chmod +x ./install.sh && \
    ./install.sh -n && \
    echo "\n\nActiveState State Tool successfully downloaded and installed to container\n"

WORKDIR /home
ENV SHELL=/bin/bash
