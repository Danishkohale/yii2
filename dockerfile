FROM php:7.4-apache

RUN apt-get update && apt-get install -y \
    git unzip libzip-dev zip && \
    docker-php-ext-install pdo pdo_mysql zip

COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

