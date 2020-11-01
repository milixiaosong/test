FROM mysql:5.7

MAINTAINER xiaosong(xiaosong.mili@gmail.com)

ENV MYSQL_ROOT_PASSWORD Abcd1234
ENV MYSQL_DATABASE pbootcms

VOLUME ["/var/lib/mysql", "/var/log/mysql"]

COPY pboot.sql /docker-entrypoint-initdb.d/

EXPOSE 3306