#!/bin/bash

while ! mysqladmin ping -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" --silent; do
    echo "Waiting for database be ready..."
    sleep 1
done

echo "MySQL is up - executing command"
    sleep 1

syslog-ng -Fe
