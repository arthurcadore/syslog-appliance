#!/bin/bash

until mysqladmin ping -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" &>/dev/null; do
    echo "MySQL is unavailable - sleeping"
    sleep 1
done

echo "MySQL is up - executing command"

syslog-ng -e