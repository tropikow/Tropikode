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