#!/bin/bash

while ! mysqladmin ping -h"$DB_HOST" -u"$DB_USER" -p"$DB_PASSWORD" --silent; do
    echo "Waiting for database be ready..."
    sleep 1
done

echo "MySQL is up - executing command"
    sleep 1

syslog-ng -e