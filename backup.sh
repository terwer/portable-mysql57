#!/bin/bash

# 获取数据库名称参数
DB_NAME="$1"
# 检查是否为空
if [ -z "$1" ]; then
  echo "请提供要备份的数据库名称"
  exit 1
fi

# MySQL容器的名称或ID
CONTAINER_ID="portable-mysql57"
# MySQL的root密码
ROOT_PASSWORD="123456"
# 获取当前时间戳，格式化为年月日时分秒
CURRENT_TIMESTAMP=$(date "+%Y%m%d%H%M%S")

# 定义备份目录路径
BACKUP_DIR="./backup/$DB_NAME"
# 确保备份目录存在，如果不存在则创建
mkdir -p "$BACKUP_DIR"

# 备份数据库
BACKUP_FILE_PATH="$BACKUP_DIR/backup_$CURRENT_TIMESTAMP.sql"
if docker exec $CONTAINER_ID mysqldump -u root -p$ROOT_PASSWORD "$DB_NAME" >"$BACKUP_FILE_PATH"; then
  echo "数据库备份成功，并已保存到 $BACKUP_FILE_PATH"
else
  echo "数据库备份失败"
fi
