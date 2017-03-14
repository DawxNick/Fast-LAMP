#!/bin/bash
echo "Updating system."
read -p "Press enter to continue."
apt update
apt upgrade
echo "Installing Apache2 and PHP7.0."
read -p "Press enter to continue."
apt install apache2 php7.0 libapache2-mod-php7.0 php7.0-mysql
service apache2 restart
echo "Apache2 and PHP7.0 successfully installed."
echo "Installing MariaDB."
read -p "Press enter to continue."
apt install mariadb-client mariadb-server
echo "Fill in the following information as required."
read -p "Press enter to continue."
mysql_secure_installation
service apache2 restart
echo "Installing phpMyAdmin."
read -p "Press enter to continue."
apt install phpmyadmin
service apache2 restart
echo "Please enter your MariaDB password."
echo "update user set plugin='' where User='root'; flush privileges;" | mysql -u root -p mysql
echo "LAMP is successfully installed, enjoy."
read -p "Press enter to finish the installation."
