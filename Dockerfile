FROM php:7.4-apache

RUN apt-get update && apt-get install -y     openssl     && a2enmod ssl rewrite

COPY index.html /var/www/html/index.html
COPY ssl.conf /etc/apache2/sites-available/000-default.conf
COPY certs/ped.ir.pem /etc/apache2/ssl/ped.ir.pem
COPY certs/ped.ir-key.pem /etc/apache2/ssl/ped.ir-key.pem

EXPOSE 80 443
