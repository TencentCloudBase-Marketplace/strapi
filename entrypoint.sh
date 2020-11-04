#!/bin/sh

# 创建数据库
echo "创建数据库：${DATABASE_NAME}"
echo "create database if not exists ${DATABASE_NAME}" | mysql -h ${DATABASE_HOST} -P ${DATABASE_PORT} -u ${DATABASE_USERNAME} -p${DATABASE_PASSWORD}
echo "创建数据库成功：${DATABASE_NAME}"

exec "$@"
