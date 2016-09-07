#!/bin/bash

rm -r /etc/zabbix
cp -r /home/docker/zabbix /etc/zabbix

mkdir -p /var/run/zabbix/
chown -R zabbix: /var/run/zabbix/

su - zabbix -s /bin/bash -c '/usr/sbin/zabbix_server -c /etc/zabbix/zabbix_server.conf -f'
