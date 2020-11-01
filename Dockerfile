FROM mysql:5.7

MAINTAINER xiaosong(xiaosong.mili@gmail.com)

ENV MYSQL_DATABASE pbootcms

COPY pboot.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
