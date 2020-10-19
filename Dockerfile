FROM mysql:5.7

ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

COPY setup.sh /mysql/setup.sh
COPY pboot.sql /mysql/schema.sql

CMD ["sh", "/mysql/setup.sh"]