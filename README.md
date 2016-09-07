# docker-zabbix

Quick (and dirty) docker images to get a working zabbix server for Zabbix Conference 2016 workshops.

## Install

Build Zabbix server & frontend docker images

    docker build --rm -t jbfavre/zabbix-frontend-php - < Dockerfile.frontend
    docker build --rm -t jbfavre/zabbix-server-mysql - < Dockerfile.zabbix

Install docker-compose

    pip install docker-compose

## Start

    docker_zabbix_root_dir=/home/dev/docker-zabbix docker-compose up

## Stop

    docker_zabbix_root_dir=/home/dev/docker-zabbix docker-compose down
