FROM php:8.2.18-fpm

LABEL author="Mamun"
LABEL maintainer="Mamun"
LABEL inc="true"

ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && apt-get install -y --fix-missing \
    exim4-base \
    cron \
    nano \
    curl \
    vim \
    locales \
    build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    libzip-dev \
    mariadb-client \
    git

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install zip mysqli pdo_mysql mbstring exif pcntl bcmath gd && docker-php-ext-enable mysqli
RUN docker-php-ext-configure intl && docker-php-ext-install intl

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Node.js and npm from node25_base image
COPY --from=mamun/node25:1.0 /usr/local/bin /usr/local/bin
COPY --from=mamun/node25:1.0 /usr/local/lib /usr/local/lib
RUN node --version && npm --version
    
# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer

WORKDIR /var/www/html