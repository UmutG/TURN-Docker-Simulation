FROM ubuntu:latest
MAINTAINER Umut Geyik <umut.geyik-b@tubitak.gov.tr>

# Working Directory -> /client
WORKDIR /client

# Copy Contents -> /client
ADD . /client

EXPOSE 3480/tcp 3480/udp 3481/tcp 3481/udp 49152-65535/tcp 49152-65535/udp

RUN apt-get update && apt-get upgrade -y && apt-get install apt-utils -y \
    iproute2 \
    tcpdump \
    dnsutils \
    iputils-ping \
    iptables \
    coturn \
  && rm -rf /var/lib/apt/lists/* 
