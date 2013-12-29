#!/bin/bash
# this will install php and apache2 on the vagrant box 
apt-get update && apt-get -y upgrade

# installing php apache2 

apt-get -y install apache2 php5-common libapache2-mod-php5 php-pear curl libcurl3 libcurl3-dev
apt-get -y install php5-curl php5-cli php5-dev php5-mysql php5-json php-apc

#set up mysql 
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password password'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password password'
sudo apt-get -y install mysql-server

#setup phpmyadmin no interaction needed 
sudo debconf-set-selections <<< 'phpmyadmin phpmyadmin/dbconfig-install boolean true'
sudo debconf-set-selections <<< 'phpmyadmin phpmyadmin/app-password-confirm password password'
sudo debconf-set-selections <<< 'phpmyadmin phpmyadmin/mysql/admin-pass password password'
sudo debconf-set-selections <<< 'phpmyadmin phpmyadmin/mysql/app-pass password password'
sudo debconf-set-selections <<< 'phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2'﻿


#update database with sql dump 
mysql -u root -ppassword create coupondb
mysql -u root -ppassword coupondb < /vagrant/database.sql


sudo apt-get -q -y install phpmyadmin
# setup apache2
rm -rf /var/www
#chmod -R 7777 /vagrant/app/tmp

ln -fs /vagrant /var/www

# enable apache2 rewrite 
sudo a2enmod rewrite

# php.ini location is 
#cp /vagrant/php-dev.ini /etc/php5/apache2/php.ini
#cp /vagrant/php-prod.ini /etc/php5/apache2/php.ini
#cp /vagrant/apache2-dev.conf /etc/apache2/apache2.conf

cp /vagrant/cakedefault.conf /etc/apache2/sites-available/

#disable site 
sudo a2dissite 000-default.conf 
sudo a2dissite cakedefault.conf

# enable default cakephp site 
sudo a2ensite cakedefault.conf

#enable 
sudo service apache2 restart 

# write the composer file install APC
#cd /vagrant && php composer.phar install 