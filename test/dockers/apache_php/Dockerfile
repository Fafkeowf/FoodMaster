# /usr/local/apache2/htdocs
# RUN chmod -R 777 /usr/local/apache2/htdocs
# COPY ./docs/ /var/www/html

FROM php:7.4-apache
COPY ./index.php /var/www/html
EXPOSE 8000
RUN apt-get update && apt-get upgrade && apt-get -y install mariadb-server-10.5
ENTRYPOINT ["service", "mariadb", "start", "&"]

