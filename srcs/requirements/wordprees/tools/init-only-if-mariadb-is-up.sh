#!/bin/bash

if [ -f /var/www/html/wp-config-sample.php ]; then
	rm -rf /var/www/html/wp-config-sample.php
	rm -rf /var/www/html/index.html
	wp core install --allow-root \
	--path=/var/www/html \
	--title="Inception" \
	--url=$SERVER_NAME \
	--admin_user=$ROOT_USER \
	--admin_password=$ROOT_PW \
	--admin_email=$ROOT_EMAIL

	wp user create --allow-root \
		--path=/var/www/html \
		"$WP_USER" "$WP_MAIL" \
		--user_pass=$WP_PW \
		--role='author'
fi

php-fpm7.4 -F