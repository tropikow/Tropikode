FROM wordpress:latest

COPY . /var/www/html/

ENV WORDPRESS_DB_HOST=dpg-cqptqtrqf0us73959860-a
ENV WORDPRESS_DB_USER=landing_db_wuyr_user
ENV WORDPRESS_DB_PASSWORD=zShM0fVFlwHsZbHNA18Jgi8lPPedGkIj
ENV WORDPRESS_DB_NAME=db-tropikode

EXPOSE 80