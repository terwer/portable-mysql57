#!/bin/sh

echo "mysql ip info:"
docker inspect portable-mysql57 | grep IPAddres