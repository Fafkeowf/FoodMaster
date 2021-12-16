# /usr/local/apache2/htdocs
# RUN chmod -R 777 /usr/local/apache2/htdocs
# COPY ./docs/ /var/www/html

FROM php:7.4-apache
COPY ./index.php /var/www/html
RUN apt-get update && apt-get install -y \
        curl \
        wget \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
  libpng-dev \
  libonig-dev \
  libzip-dev \
  libmcrypt-dev \
        && pecl install mcrypt-1.0.3 \
  && docker-php-ext-enable mcrypt \
        && docker-php-ext-install -j$(nproc) iconv mbstring mysqli pdo_mysql zip \
  && docker-php-ext-configure gd --with-freetype --with-jpeg \
        && docker-php-ext-install -j$(nproc) gd


