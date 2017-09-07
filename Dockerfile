FROM alpine:3.4
RUN apk --update add \  
    musl freetype libjpeg-turbo libpng zlib \
    php5 \
    php5-cli \
    php5-iconv \
    php5-pcntl \
    php5-posix \
    php5-sockets \
    php5-mysql  \
    php5-zip \
    php5-phar \
    php5-pdo \
    php5-phar \
    php5-zlib \
    php5-json \
    php5-curl \
    php5-ctype \
    php5-mcrypt \
    php5-openssl \
    php5-xml \
    php5-intl \
    php5-pdo_mysql \
    procps \
    curl \
    imagemagick 
# ttf-dejavu ttf-droid ttf-freefont ttf-liberation ttf-ubuntu-font-family

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing gnu-libiconv
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php

RUN rm -rf /var/cache/apk/* && mkdir /data
WORKDIR /data
