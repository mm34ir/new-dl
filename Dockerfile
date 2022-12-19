FROM php:7.4-apache
COPY src/ /var/www/html
EXPOSE 80
RUN sudo apt update
RUN sudo apt upgrade
RUN sudo apt add apache2-utils
RUN a2enmod rewrite
RUN rc-service apache2 restart
