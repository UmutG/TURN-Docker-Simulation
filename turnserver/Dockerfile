FROM ubuntu:16.04
MAINTAINER Umut Geyik <umut.geyik-b@tubitak.gov.tr>


# Working Directory -> /server
WORKDIR /server

# Copy Contents -> /server
ADD . /server

EXPOSE 3478/udp
EXPOSE 3478/tcp
EXPOSE 3479/udp
EXPOSE 3479/udp
EXPOSE 80/tcp
EXPOSE 80/udp
EXPOSE 443/tcp
EXPOSE 443/udp

RUN apt-get update && apt-get upgrade -y && apt-get install apt-utils -y \
    iptables \
    tcpdump \
    net-tools \
    sqlite \
    dnsutils \
    iputils-ping \
    coturn \
  && rm -rf /var/lib/apt/lists/* 
