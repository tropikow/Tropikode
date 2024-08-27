FROM docker:dind

# Establecer el directorio de trabajo
WORKDIR /var/www/html

# Instalar extensiones de PostgreSQL
RUN apt-get update \
    && apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql
    

# Copiar archivos del directorio 'wordpress' al contenedor
COPY . .

# Configurar ServerName en Apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Exponer el puerto 80
EXPOSE 80

# Comando para iniciar Apache
CMD ["apache2-foreground"]
