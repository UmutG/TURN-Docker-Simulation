FROM ubuntu:16.04
MAINTAINER Umut Geyik <umut.geyik-b@tubitak.gov.tr>


# Working Directory -> /server
WORKDIR /server

# Copy Contents -> /server
ADD . /server

EXPOSE 3478/tcp

RUN apt-get update && apt-get upgrade -y && apt-get install apt-utils -y \
    sqlite \
    iproute2 \
    dnsutils \
    iputils-ping \
    coturn \
  && rm -rf /var/lib/apt/lists/* 
