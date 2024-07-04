#!/bin/bash

until mysqladmin ping -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" &>/dev/null; do
    echo "MySQL is unavailable - sleeping"
    sleep 1
done

    sleep 1
    
echo "MySQL is up - executing command"
    sleep 1

syslog-ng -e