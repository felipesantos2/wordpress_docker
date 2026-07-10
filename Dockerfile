FROM wordpress:7.0.1-php8.4-apache

LABEL maintainer="felipesantos2"

RUN apt update -y && apt upgrade -y

RUN apt install -y \
  bash \
  nodejs npm \
  npm \
  curl \
  unzip \
  build-essential

RUN apt clean

# Install composer
RUN curl -sS https://getcomposer.org/installer | php --  --install-dir=/usr/local/bin --filename=composer

RUN chmod -R 777 .