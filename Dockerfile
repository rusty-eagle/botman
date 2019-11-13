FROM docker.io/library/alpine
MAINTAINER Jon

EXPOSE 8080

RUN apk update && apk upgrade && \
	apk add php7 php7-xmlwriter php7-xml php7-mbstring php7-json \
	php7-iconv php7-session php7-tokenizer php7-pdo php7-mysqlnd php7-sqlite3 composer \
	&& mkdir -p /var/www/botman && cd /var/www/botman && \
	composer require botman/botman

ENTRYPOINT ["/bin/sh"]
