FROM wordpress:latest

LABEL maintainer="Felipe Pinheiro <github.com/felipesantos2>"

RUN curl -sS https://getcomposer.org/installer | php --  --install-dir=/usr/local/bin --filename=composer
