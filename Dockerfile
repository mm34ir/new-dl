FROM php:7.4-apache
COPY src/ /var/www/html
EXPOSE 80

RUN a2enmod rewrite
RUN rc-service apache2 restart
