FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get clean

RUN apt-get update && apt-get install -y \
     mariadb-client \ 
     syslog-ng \
     libdbi1 libdbi-dev libdbd-mysql \
     net-tools \
     supervisor 

CMD ["syslog-ng", "-Fe"]