FROM wordpress:5.5.1-fpm-alpine

RUN apk add iproute2
COPY configure.sh /usr/local/bin/

ENTRYPOINT ["configure.sh"]