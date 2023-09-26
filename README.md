# portable-mysql57
portable mysql57 via docker

## show mysql log
```
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