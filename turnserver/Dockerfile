FROM ubuntu:latest
MAINTAINER Umut Geyik <umut.geyik-b@tubitak.gov.tr>

# Working Directory -> /server
WORKDIR /server

# Copy Contents -> /server
ADD . /server

EXPOSE 3478/udp 3478/tcp 3479/udp 3479/udp 80/tcp 80/udp 443/tcp 443/udp

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
