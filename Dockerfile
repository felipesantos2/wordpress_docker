FROM wordpress:7.0.1-php8.4-apache

LABEL maintainer="<github.com/felipesantos2>"

RUN apt update -y && apt upgrade -y

RUN apt install -y \
    bash \
    wget \
    nano \
    nodejs \
    npm \
    curl \
    build-essential


RUN apt clean

# Install composer
RUN curl -sS https://getcomposer.org/installer | php --  --install-dir=/usr/local/bin --filename=composer

RUN chmod -R 777 .