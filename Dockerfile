FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive

COPY ./arpcachepoison.py /root
COPY ./start.sh /tmp
COPY ./isc-dhcp-server /tmp
COPY ./dhcpd.conf /tmp

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install apt-utils -y \
&& apt-get install procps -y \
&& apt-get install sudo -y \
&& apt-get install rsyslog -y \
&& apt-get install dialog -y \
&& apt-get install vim -y \
&& apt-get install curl -y\
&& apt-get install wget -y\
&& apt-get install dos2unix -y\
&& apt-get install net-tools -y \
&& apt-get install tcpdump -y \
&& apt-get install traceroute -y \
&& apt-get install scapy -y \
&& apt-get install isc-dhcp-server -y \
&& apt-get install isc-dhcp-client -y \
&& apt-get install resolvconf


ENTRYPOINT /tmp/start.sh && /bin/bash


