FROM debian:oldstable

ARG WP_BD
ARG WP_USER
ARG WP_PW

RUN apt update && apt install -y \
	mariadb-server \
	&& \
	apt clean

RUN mkdir -p /var/run/mysqld \
	&& \
	chown -R mysql:mysql /var/run/mysqld \
	&& \
	chmod 777 /var/run/mysqld

