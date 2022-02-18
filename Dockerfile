FROM ubuntu:latest
MAINTAINER Umut Geyik <umut.geyik-b@tubitak.gov.tr>


# Working Directory -> /server
WORKDIR /client

# Copy Contents -> /server
ADD . /client

EXPOSE 3478

RUN apt-get update && apt-get upgrade -y && apt-get install apt-utils -y \
    iproute2 \
    dnsutils \
    iputils-ping \
    iptables \
    coturn \
  && rm -rf /var/lib/apt/lists/* 
