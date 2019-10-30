FROM php:7.2-cli

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- \
        --filename=composer \
        --install-dir=/usr/local/bin && \
    php /usr/local/bin/composer clear-cache

RUN apt-get update && apt-get install -y unzip zlib1g-dev curl libcurl3-dev locales

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

RUN docker-php-ext-install json pdo pdo_mysql curl mbstring zip sockets bcmath pcntl

COPY docker-php-entrypoint /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-php-entrypoint

RUN useradd -m -U -s /bin/bash hostuser

RUN mkdir /home/hostuser/app && chown hostuser:hostuser /home/hostuser/app

WORKDIR /home/hostuser/app

VOLUME /home/hostuser/app

RUN sed -i -e 's/# ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=ru_RU.UTF-8

ENV LANG ru_RU.UTF-8