#!/bin/bash

# 获取备份文件路径参数
BACKUP_FILE="$1"
# 获取要还原的数据库名称参数
DB_NAME="$2"

# 检查是否提供了备份文件和数据库名称
if [ -z "$BACKUP_FILE" ] || [ -z "$DB_NAME" ]; then
  echo "请提供备份文件路径和要还原的数据库名称"
  exit 1
fi

# MySQL容器的名称或ID
CONTAINER_ID="portable-mysql57"
# MySQL的root密码
ROOT_PASSWORD="123456"

# 检查备份文件是否存在
if [ ! -f "$BACKUP_FILE" ]; then
  echo "备份文件不存在: $BACKUP_FILE"
  exit 1
fi

# 还原数据库
if docker exec -i $CONTAINER_ID mysql -u root -p$ROOT_PASSWORD "$DB_NAME" <"$BACKUP_FILE"; then
  echo "数据库还原成功"
else
  echo "数据库还原失败"
fi
