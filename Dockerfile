FROM php:8.2-apache

COPY . /var/www/html/

RUN a2enmod rewrite
RUN a2enmod headers
RUN a2enmod expires

RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

EXPOSE 80