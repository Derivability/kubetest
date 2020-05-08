FROM php:7.3-apache
RUN apt update \
    && apt-get install -y git
RUN apt install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql pgsql \
    && apt remove -y libpq-dev 
RUN a2enmod rewrite
#Install Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php --install-dir=. --filename=composer
RUN mv composer /usr/local/bin/

COPY src/ /var/www/html/
EXPOSE 80
