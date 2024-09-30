FROM wordpress:6.6.1-php8.1-apache

WORKDIR /var/www/html

COPY . .

RUN apt-get update && apt-get install

EXPOSE 80

CMD ["apache2-foreground"]