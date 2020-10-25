#!/bin/bash
#
# Skript laeb alla wordpressi paketi pakkib selle lahti, liigutab õigesse kohta ja muudab config faili
echo "Wordpressi paketi allalaadmine..."
wget https://wordpress.org/latest.tar.gz -P /var/www/html/
# Lahti pakkimine
tar xzf /var/www/html/latest.tar.gz  -C /var/www/html/
# Kopeeriib sample config faili, et muuta config ja samas jätta alles kui on seda vaja
cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php
# Eemaldab kompressitud faili
rm -r /var/www/html/latest.tar.gz
# Muudab config faili
sed -i "s/database_name_here/wordpress/g" /var/www/html/wordpress/wp-config.php
sed -i "s/username_here/wordpressuser/g" /var/www/html/wordpress/wp-config.php
sed -i "s/password_here/qwerty/g" /var/www/html/wordpress/wp-config.php
# Annab teada ei on instaleeritud ja kust asub
echo "Wordpress on instaleeritud kasuta /var/www/html/wordpress"
# Skripti lõpp
