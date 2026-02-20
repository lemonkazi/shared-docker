FROM php:7.4-apache

LABEL author="Mamun"
LABEL maintainer="Mamun"
LABEL inc="true"

ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && apt-get install -y --fix-missing \
    zlib1g-dev libicu-dev g++ \
    libpng-dev \
    libwebp-dev libjpeg62-turbo-dev libxpm-dev \
    libfreetype6-dev libjpeg-dev \
    unzip openssl zip \
    exim4-base \
    libzip-dev \
    cron \
    nano
    

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-configure intl && docker-php-ext-install intl

# install pdo_mysql library
RUN docker-php-ext-configure pdo_mysql
RUN docker-php-ext-install pdo_mysql
# install mysqli library
RUN docker-php-ext-configure mysqli
RUN docker-php-ext-install mysqli
# install gd library
RUN docker-php-ext-configure gd --with-jpeg
RUN docker-php-ext-install -j$(nproc) gd

RUN docker-php-ext-configure zip 
RUN docker-php-ext-install zip

WORKDIR /var/www/html