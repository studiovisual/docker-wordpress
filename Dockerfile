FROM wordpress:php7.3-apache

RUN apt-get update -yqq && apt-get install mariadb-client wget curl nano -yqq

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

COPY --from=wordpress:cli-php7.4 /usr/local/bin/wp /usr/local/bin/wp

RUN a2enmod headers
