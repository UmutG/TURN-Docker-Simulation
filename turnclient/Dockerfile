FROM ubuntu:latest
MAINTAINER Umut Geyik <umut.geyik-b@tubitak.gov.tr>


# Working Directory -> /client
WORKDIR /client

# Copy Contents -> /client
ADD . /client

EXPOSE 3478

RUN apt-get update && apt-get upgrade -y && apt-get install apt-utils -y \
    iproute2 \
    tcpdump \
    dnsutils \
    iputils-ping \
    iptables \
    coturn \
  && rm -rf /var/lib/apt/lists/* 
