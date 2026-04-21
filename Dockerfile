name: prestashop-env

services:
  mysql:
    image: mysql:8.0
    restart: unless-stopped
    environment:
      MYSQL_ROOT_PASSWORD: admin
      MYSQL_DATABASE: prestashop
    volumes:
      - db_data:/var/lib/mysql
    networks:
      - prestashop-network

  prestashop:
    image: prestashop/prestashop:latest
    restart: unless-stopped
    ports:
      - "8080:80"
    depends_on:
      - mysql
    environment:
      - DB_SERVER=mysql
      - DB_NAME=prestashop
      - DB_USER=root
      - DB_PASSWD=admin
      - PS_INSTALL_AUTO=1  # Installation automatique
      - PS_DOMAIN=localhost:8080
      - PS_LANGUAGE=fr
      - PS_COUNTRY=FR
      - PS_FOLDER_ADMIN=admin1234
    volumes:
      - prestashop_data:/var/www/html
    networks:
      - prestashop-network

  phpmyadmin:
    image: phpmyadmin/phpmyadmin
    restart: unless-stopped
    ports:
      - "8081:80"
    environment:
      PMA_HOST: mysql
      PMA_ARBITRARY: 1
    networks:
      - prestashop-network

networks:
  prestashop-network:

volumes:
  db_data:
  prestashop_data: