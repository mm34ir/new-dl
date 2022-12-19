FROM php:7.4-apache
COPY src/ /var/www/html
EXPOSE 80

RUN apk update
RUN apk upgrade
RUN apk add apache2-utils
RUN a2enmod rewrite
RUN rc-service apache2 restart
