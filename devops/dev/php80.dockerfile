FROM php:8.0.0RC5-fpm-buster
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git zip
RUN curl https://getcomposer.org/download/2.0.0/composer.phar > /usr/local/bin/composer
RUN chmod 755 /usr/local/bin/composer
RUN useradd -m dev
WORKDIR /srv/PhpScaffolding
