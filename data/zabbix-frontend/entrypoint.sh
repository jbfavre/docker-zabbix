#!/bin/bash

rm -r /etc/zabbix
cp -r //home/docker/zabbix /etc/zabbix

rm -r /etc/nginx
cp -r /home/docker/nginx-light /etc/nginx
nginx -c /etc/nginx/nginx.conf

rm -r /etc/php5
cp -r /home/docker/php5-fpm /etc/php5
php5-fpm -c /etc/php5/fpm/php.ini -F

nginx -c /etc/nginx/nginx.conf -s stop
