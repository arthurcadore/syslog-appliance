FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    mariadb-client \
    syslog-ng \
    libdbi1 libdbi-dev libdbd-mysql \
    net-tools \
    supervisor \
    && rm -rf /var/lib/apt/lists/*


RUN mkdir -p /var/log/supervisor /etc/supervisor/conf.d

COPY ./config/syslog-ng.conf /etc/syslog-ng/syslog-ng.conf
COPY ./docker/supervisord.conf /etc/supervisord.conf
COPY ./docker/entrypoint.sh /etc/entrypoint.sh

RUN chmod +x /etc/entrypoint.sh

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]