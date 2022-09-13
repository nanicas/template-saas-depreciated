#origin
FROM php:8.0-apache AS php8

ENV APPPATH nans-template-saas

#copies
COPY ./ /var/www/html/$APPPATH
#COPY docker/run.sh /tmp

#workdir
WORKDIR /var/www/html/$APPPATH

#tools
RUN apt-get -y update
RUN apt-get install -y \
        git \
        tree \
        vim \
        wget \
        subversion
RUN apt-get install -y \
        libzip-dev \
        zip
RUN apt-get install -y \
        nodejs \
        npm

#extensions
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install zip

#commands
RUN rm -rf /var/cache/apk/*
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN a2enmod rewrite

#ENTRYPOINT ["sh", "./tmp/run.sh"]