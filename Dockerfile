FROM wordpress:6.6.1-php8.1-apache

# Establecer el directorio de trabajo
WORKDIR /var/www/html

# Copiar archivos del directorio 'wordpress' al contenedor
COPY wordpress/ .

# Descargar y configurar el plugin pg4wp desde el repositorio correcto
RUN apt-get update && apt-get install -y wget unzip \
    && wget https://github.com/PostgreSQL-For-Wordpress/postgresql-for-wordpress/archive/refs/heads/main.zip -O /tmp/pg4wp.zip \
    && unzip /tmp/pg4wp.zip -d /tmp \
    && mv /tmp/postgresql-for-wordpress-main/pg4wp /var/www/html/wp-content/plugins/pg4wp \
    && mv /tmp/postgresql-for-wordpress-main/db.php /var/www/html/wp-content/

# Configurar ServerName en Apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Exponer el puerto 80
EXPOSE 80

# Comando para iniciar Apache
CMD ["apache2-foreground"]
