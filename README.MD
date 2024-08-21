# Docker Commands Guide

## Verifying Images

- Verifica si la imagen está disponible en la biblioteca de Docker Hub: [Docker Hub](https://hub.docker.com)

## Running Images

- Para ejecutar una imagen:
  ```sh
  docker run <nombre_imagen>
```

- Para ejecutar una imagen específica con una versión:
  ```sh
  docker run <nombre_imagen>:<etiqueta>
```

- Para ejecutar una imagen en segundo plano:
  ```sh
  docker run -d <nombre_imagen>
```

## Managing Images

- Para ver las imágenes instaladas:
  ```sh
  docker images
```

- Para descargar una imagen sin ejecutarla automáticamente:
  ```sh
docker pull <nombre_imagen>
```

- Para eliminar una imagen:
  ```sh
docker rmi <nombre_imagen>
```

## Managing Containers

- Para ver los contenedores en ejecución:
  ```sh
    docker ps
```

- Para ver todos los contenedores (en ejecución y detenidos):
  ```sh
    docker ps -a
```

- Para ver los logs de un contenedor:
  ```sh
    docker logs -f <id_contenedor>
  ```

- Para ejecutar un comando dentro de un contenedor en ejecución:
  ```sh
    docker exec -it <id_contenedor> <comando>
  ```

- Para detener un contenedor en ejecución:
  ```sh
    docker stop <id_contenedor>
  ```

Additional Commands

- Para iniciar un contenedor detenido:
  ```sh
    docker start <id_contenedor>
  ```

- Para acceder a un contenedor en ejecución:
  ```sh
    docker exec -it <id_contenedor> /bin/bash
  ```


- Para buscar en la lista de imagenes descargadas palabras claves especificadas:
  ```sh
    docker images |grep <palabra_clave>
  ```

- Para construir una imagen docker 
  ```sh
  docker build -t <nombre_contenedor> . 
  ```

- Para correr la imagen docker :
  ```sh
  docker run -p <puerto_local>:<puerto_de_la_imagen> <nombre_contenedor>
  ```

¿Problemas ? Aquí algunas soluciones :

## ERROR: failed to solve: process "/bin/sh -c apt-get update && apt-get install -y wget unzip     && wget https://github.com/kevinoid/postgresql-for-wordpress/archive/refs/heads/master.zip -O /tmp/pg4wp.zip     && unzip /tmp/pg4wp.zip -d /tmp     && mv /tmp/postgresql-for-wordpress-master/db.php /var/www/html/wp-content     && mv /tmp/postgresql-for-wordpress-master/pg4wp /var/www/html/wp-content/plugins" did not complete successfully: exit code: 8
R. Indica que ha fallado el proceso donde se actualizan las dependencias y se obtiene otras, en este caso estaba apuntando a instalar dentro de la imagen el archivo "https://github.com/kevinoid/postgresql-for-wordpress/archive/refs/heads/master.zip" esta era un archivo zip que posteriormente debia descomprimirlo, ¿para que servia este archivo? , basicamente este archivo me daba el plugin pgp4wp, de este archivo obtenia el archivo db.php que basicamente interceptaba los datos que son enviados hacia una base de datos mysql, los cambia a postgresql y tambien se asegura de cargar una vez, depuración de logs y demás, personalmente también debes asegurarte de obtener el archivo wp-config.php, este archivo si no lo tienes lo puedes crear y copiar el contenido del archivo wp-config.sample a el archivo nuevo que acabas de crear , posteriormente debes apuntar los datos como host, contraseñas,usuario y demás a tu base de datos, al obtener estas configuraciones y te sale el mismo problema puedes descargar manualmente el archivo pgp4wp desde este repositorio : "https://github.com/PostgreSQL-For-Wordpress/postgresql-for-wordpress", este repositorio ya tiene las instrucciones para instalar el archivo y te vuelve a dar unos pasos que ya he mencionado anteriormente.

## Your PHP installation appears to be missing the PostgreSQL extension which is required by WordPress with PG4WP.
R. https://forums.docker.com/t/your-php-installation-appears-to-be-missing-the-postgresql-extension-which-is-required-by-wordpress-with-pg4wp/74117