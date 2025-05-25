FROM wordpress:latest

LABEL maintainer="<github.com/felipesantos2>"

RUN apt update -y
RUN apt upgrade -y

RUN apt install -y \
    bash \
    wget \
    nano \
    nodejs \
    npm \
    curl


RUN apt clean

# Install composer
RUN curl -sS https://getcomposer.org/installer | php --  --install-dir=/usr/local/bin --filename=composer

RUN chmod -R 777 .