# Docker Commands Guide

## Verifying Images

To verify if an image is available in the Docker Hub library, you can visit [Docker Hub](https://hub.docker.com).

## Running Images

To run an image, use the following command:
```sh
docker run <image_name>
```

To run a specific version of an image, use the following command:
```sh
docker run <image_name>:<tag>
```

To run an image in the background, use the following command:
```sh
docker run -d <image_name>
```

## Managing Images

To view the installed images, use the following command:
```sh
docker images
```

To download an image without automatically running it, use the following command:
```sh
docker pull <image_name>
```

To delete an image, use the following command:
```sh
docker rmi <image_name>
```

## Managing Containers

To view the running containers, use the following command:
```sh
docker ps
```

To view all containers (running and stopped), use the following command:
```sh
docker ps -a
```

To view the logs of a container, use the following command:
```sh
docker logs -f <container_id>
```

To execute a command inside a running container, use the following command:
```sh
docker exec -it <container_id> <command>
```

To stop a running container, use the following command:
```sh
docker stop <container_id>
```

Additional Commands

To start a stopped container, use the following command:
```sh
docker start <container_id>
```

To access a running container, use the following command:
```sh
docker exec -it <container_id> /bin/bash
```

To search for specific keywords in the list of downloaded images, use the following command:
```sh
docker images | grep <keyword>
```

To build a Docker image, use the following command:
```sh
docker build -t <container_name> .
```
Note: In this case, the -t flag represents the tag (name of the container). Without this flag, a default ID will be assigned.

To run a Docker image, use the following command:
```sh
docker run -p <local_port>:<image_port> <container_name>
```
Note: In this case, the -p flag represents the port. The local port is the port on the host machine, and the image port is the port the image is listening on (can be found in EXPOSE: <P>).

To run a Docker image in the background, use the following command:
```sh
docker run -dp <local_port>:<image_port> <container_name>
```

Note: In this case, the -dp flags mean d: detached (run the container in the background) and p: map ports between the container and the host.

To persist data, you can map the data path using the following command:
```sh
docker run -d -v /path1/path2/path3/(if there is a variable = path4:/variable)/path5 -p 8080 <container_name>
```

Note: In the case of this file, assuming it is located in the Tropikode folder, and considering the structure of the WordPress project, the path would be:
```sh
docker run -d -v wordpress/wp-content/uploads -p 8080:80 wordpress-image
```

To save changes automatically and write them directly to the container without restarting it, use the following command:
```sh
docker run -d -v /local_path1:/container_path1 -v /local_path2:/container_path2 -p 8080:80 wordpress-image
```

Note: After mapping the local volumes to the volumes inside the image, it is recommended to rebuild the image using `docker build`. You can also tag it for semantic versioning of the image, for example:
```sh
docker build -t <container_name>:v2 .
```

To create a container network, use the following command:
```sh
docker network create <network_name>
```

To view all created networks, use the following command:
```sh
docker network ls
```

To connect containers to a network, use the following command:
```sh
docker run -d --network <network_name> --network-alias <alias_name> -p <host_port>:<image_port> <container_name>
```

To inspect containers connected to a network, use the following command:
```sh
docker network inspect <network_name>
```

To disconnect containers from a network, use the following command:
```sh
docker network disconnect <network_name> <alias_name>
```

To connect a container to a network and map a volume, use the following command:
```sh
docker run -d --network <network_name> --network-alias <alias_name> -v $(pwd):/usr/src/app -p <host_port>:<image_port> <image_name>
```

To stop a container from the command line, use the following command:
```sh
docker stop <container_name>
```

To remove a container from the command line, use the following command:
```sh
docker rm <container_name>
```

To view the logs of a container, use the following command:
```sh
docker logs <container_id>
```

To view the contents of a container, use the following command:
```sh
docker run -i --rm <image> /bin/sh
```

To recover images that had issues or were not initially uploaded, use the following command:
```sh
docker-compose up -d
```

To start docker-compose, use the following command:
```sh
docker-compose up --build
```

To stop docker-compose, use the following command:
```sh
docker-compose down
```

To start docker-compose in the background, use the following command:
```sh
docker-compose up -d --build
```

Having issues? Here are some solutions:

## ERROR: failed to solve: process "/bin/sh -c apt-get update && apt-get install -y wget unzip     && wget https://github.com/kevinoid/postgresql-for-wordpress/archive/refs/heads/master.zip -O /tmp/pg4wp.zip     && unzip /tmp/pg4wp.zip -d /tmp     && mv /tmp/postgresql-for-wordpress-master/db.php /var/www/html/wp-content     && mv /tmp/postgresql-for-wordpress-master/pg4wp /var/www/html/wp-content/plugins" did not complete successfully: exit code: 8
This error indicates that the process of updating dependencies and obtaining other files has failed. In this case, it was trying to install the "https://github.com/kevinoid/postgresql-for-wordpress/archive/refs/heads/master.zip" file, which is a zip file that needs to be extracted. This file provides the pgp4wp plugin, which intercepts data sent to a MySQL database, converts it to PostgreSQL, and also handles logging and other features. If you encounter this issue, you can manually download the pgp4wp file from the repository "https://github.com/PostgreSQL-For-Wordpress/postgresql-for-wordpress". This repository provides instructions on how to install the file, as mentioned earlier.

## Your PHP installation appears to be missing the PostgreSQL extension which is required by WordPress with PG4WP.
If you encounter this error, please refer to this forum thread for a solution: [Your PHP installation appears to be missing the PostgreSQL extension which is required by WordPress with PG4WP](https://forums.docker.com/t/your-php-installation-appears-to-be-missing-the-postgresql-extension-which-is-required-by-wordpress-with-pg4wp/74117).

