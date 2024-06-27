# Utilisez l'image officielle PHP avec Apache
FROM php:7.4-apache

# Installez les extensions nécessaires pour PDO MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Copiez le code de l'application dans le répertoire web du conteneur
COPY ./src /var/www/html/src
COPY ./web /var/www/html/web

# Copiez le fichier de configuration Apache (si nécessaire)
# COPY ./apache-config.conf /etc/apache2/sites-available/000-default.conf

# Expose le port 80
EXPOSE 80
