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

# ====================== COPY NODE + YARN ======================
COPY --from=mamun/node25:1.0 /usr/local /usr/local
COPY --from=mamun/node25:1.0 /opt/yarn-v* /opt/yarn

# Create necessary symlinks
RUN ln -sf /usr/local/bin/node /usr/bin/node && \
    ln -sf /usr/local/bin/npm /usr/bin/npm && \
    ln -sf /opt/yarn/bin/yarn /usr/bin/yarn && \
    ln -sf /opt/yarn/bin/yarnpkg /usr/bin/yarnpkg

# Verify installation
RUN node --version && npm --version && yarn --version
    
# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer

WORKDIR /var/www/html