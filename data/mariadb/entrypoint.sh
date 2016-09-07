#!/bin/bash

rm -r /etc/mysql
cp -r /home/docker/config /etc/mysql
chown -R mysql: /home/docker/data
echo "Starting mysql"
/usr/local/bin/docker-entrypoint.sh mysqld
