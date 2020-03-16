FROM ubuntu:bionic as ubuntu18
LABEL maintainer "p4misc <p4miscjp@gmail.com>"

RUN apt-get update -y \
    && apt-get install -y vim wget \
    && apt-get install -y python3.7 python3.7-dev python3-pip libssl-dev \
    && update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 1 \
    && update-alternatives --config python3 \
    && pip3 install p4python \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root
COPY test.py .
