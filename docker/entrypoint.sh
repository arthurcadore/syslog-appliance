#!/bin/bash
set -e

while ! mysqladmin ping -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" --silent; do
    echo "Waiting for database to be ready..."
    sleep 1
done

echo "MySQL is up - starting syslog-ng..."
exec syslog-ng -Fe
