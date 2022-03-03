FROM ubuntu:latest
MAINTAINER Umut Geyik <umut.geyik-b@tubitak.gov.tr>

# Working Directory -> /server
WORKDIR /server

# Copy Contents -> /server
ADD . /server

RUN apt-get update && apt-get upgrade -y && apt-get install apt-utils -y \
    iptables \
    iproute2 \
    tcpdump \
    net-tools \
    sqlite \
    dnsutils \
    iputils-ping \
    coturn \
  && rm -rf /var/lib/apt/lists/* 
