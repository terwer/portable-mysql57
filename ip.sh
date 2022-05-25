#!/bin/sh

echo "mysql ip info:"
docker inspect portable-mysql57-centos7 | grep IPAddres

echo "redis inp info:"
docker inspect portable-redis7-centos7 | grep IPAddres