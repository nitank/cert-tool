FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir /cert-tools && cd cert-tools
COPY . /cert-tools
WORKDIR /cert-tools


CMD ["pip", "install", "."]

