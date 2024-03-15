# 构建镜像
# docker build . -t portable-mysql57:5.7.38 --force-rm --no-cache

# 运行容器
# docker run --name=portable-mysql57 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 portable-mysql57:5.7.38
# docker run --name=portable-mysql57 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d portable-mysql57:5.7.38

#依赖的镜像
FROM mysql/mysql-server:5.7.38

#镜像创建者的信息
MAINTAINER terwer "youweics@163.com"

# 设置编码
ENV LANG C.UTF-8

# 设置时区
ENV TZ Asia/Shanghai

# 替换配置文件
COPY ./conf/my.cnf /etc/my.cnf

CMD ["mysqld"]