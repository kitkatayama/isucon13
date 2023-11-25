#!/bin/bash
set -ex

LANG_SERVICE=web-service

## stop services

sudo systemctl stop mysql
sudo systemctl stop nginx
sudo systemctl stop isupipe-go.service
sleep 2

## language specific build code here


# cd app/golang && make build
cd /home/isucon/webapp/go
make
cd -

## log rotate
sudo cp /var/log/nginx/access.log /var/log/nginx/access.log-`date "+%s"`
sudo truncate --size 0 /var/log/nginx/access.log

## start service

sudo systemctl start mysql
sleep 5
sudo systemctl start nginx
sudo systemctl start isupipe-go.service

## initialize code here
# app/initdb
