# portable-mysql57

portable mysql57 via docker

## Start

```bash
docker compose up --build
```

fix issues:

1. Can't start server : Bind on unix socket: Operation not supported

```bash
rm -rf data/mysql.sock
rm -rf data/mysql.sock.lock
docker compose up --build --remove-orphans --force-recreate
```

## show mysql log

```
docker exec -it --user root portable-mysql57 /bin/bash
cat /var/log/mysqld.log
```

## Backup && Restore

Backup

```bash
./backup.sh kms16_release
```

Restore

```bash
./restore.sh ./backup/local_nfkj/backup_20230926174324.sql kms16_release
```

See also

https://gist.github.com/spalladino/6d981f7b33f6e0afe6bb

## Inspect

```bash
docker exec -it --user root portable-mysql57 /bin/bash
ifconfig
# or
docker inspect portable-mysql57 | grep IPAddres

# 登录容器MySQL
docker exec -it portable-mysql57 mysql -uroot -p123456
show variables like 'character%';
select now();
```