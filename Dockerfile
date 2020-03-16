FROM ubuntu:bionic as ubuntu18
LABEL maintainer "p4misc <p4miscjp@gmail.com>"

ARG PYTHON_VER=3.7

RUN apt-get update -y \
    && apt-get install -y vim wget \
    && apt-get install -y python${PYTHON_VER} python${PYTHON_VER}-dev python3-pip libssl-dev \
    && update-alternatives --install /usr/bin/python3 python3 /usr/bin/python${PYTHON_VER} 1 \
    && update-alternatives --config python3 \
    && pip3 install p4python \
    && apt-get clean all \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root
COPY test.py .
