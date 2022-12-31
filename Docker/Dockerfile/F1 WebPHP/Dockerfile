FROM php:8.0-apache
COPY srcWEB/ /var/www/html
VOLUME vol_WebPHP:/var/www/html
#RUN cd /var/www/html \
RUN apt-get update && apt-get upgrade -y
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
EXPOSE 80
