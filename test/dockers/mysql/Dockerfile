FROM mysql

ENV MYSQL_ROOT_PASSWORD="12345"
COPY food.sql /docker-entrypoint-initdb.d/
EXPOSE 3306
