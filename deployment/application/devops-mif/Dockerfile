FROM alpine:latest

# Installing bash
RUN apk add bash
RUN sed -i 's/bin\/ash/bin\/bash/g' /etc/passwd

# Installing PHP
RUN apk add --no-cache php82 php82-common php82-fpm
RUN ln -sf /usr/bin/php82 /usr/bin/php

# Installing Nginx
RUN apk add --no-cache nginx
RUN mkdir -p /run/nginx

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Create a directory for your PHP application
RUN mkdir -p /var/www/html

# Copy the PHP script into the directory
COPY index.php /var/www/html/index.php

# Expose port 80
EXPOSE 80

# Start nginx and PHP-FPM
CMD php-fpm82; nginx -g 'daemon off;'