FROM wordpress:latest

LABEL maintainer="Felipe Santos <github.com/felipesantos2>"

RUN apt-get update -yq && apt-get upgrade -yq

RUN apt-get install -y --no-install-recommends \
    nano \
    curl \
    wget \
    bash \
    git

RUN  apt-get install -y --no-install-recommends  software-properties-common \
    swig \
    zip \
    sudo

RUN apt-get autoclean

RUN curl -sS https://getcomposer.org/installer | php --  --install-dir=/usr/local/bin --filename=composer

RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html