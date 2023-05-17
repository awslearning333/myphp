#!/bin/bash
sudo apt update
sudo apt install --no-install-recommends php8.1
sudo apt-get install -y php8.1-cli php8.1-common php8.1-mysql php8.1-zip php8.1-gd php8.1-mbstring php8.1-curl php8.1-xml php8.1-bcmath
sudo apt install apache2 -y
sudo apt install libapache2-mod-php -y
sudo apt-get install -y mysql-server
sudo  apt install php8.1-gd
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer
sudo cd /var/www/html/laravel
sudo composer install
sudo  chown -R www-data.www-data /var/www/html/laravel
sudo chmod -R 755 /var/www/html/laravel
sudo chmod -R 777 /var/www/html/laravel/storage
sudo php artisan key:generate

 

