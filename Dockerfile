FROM php:8.2-apache

COPY . /var/www/html/

# Activar mod_rewrite
RUN a2enmod rewrite

# Permitir uso de .htaccess
RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

EXPOSE 80