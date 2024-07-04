FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get clean

RUN apt-get update && apt-get install -y \
     mariadb-client \ 
     syslog-ng \
     libdbi1 libdbi-dev libdbd-mysql \
     net-tools \
     supervisor 

RUN mkdir -p /var/log/supervisor /etc/supervisor/conf.d

COPY ./supervisor.conf /etc/supervisord.conf
COPY ./startup-connection.sh /etc/startup-connection.sh

RUN chmod +x /etc/startup-connection.sh

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]