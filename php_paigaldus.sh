#!/bin/bash
#
#Skript kontorllib kas PHP7.0 on olemas ja kui ei ole siis instaleerib selle
PHP=$(dpkg-query -W -f='${Status}' php7.0 2>/dev/null | grep -c 'ok installed')
if [ $PHP -eq 0 ]; then
	#Ei leidnud PHP7.0 ja instaleerime
	echo "PHP versioon 7.0 paigaldamine..."
	apt-get install php7.0 libapache2-mod-php7.0 php7.0-mysql
	echo "PHP 7.0 instaleeritud"
elif [ $PHP -eq 1 ]; then
	#PHP7.0 on olemas ja ei ole vaja instaleerida
	echo "PHP on juba instaleeritud"
	which php
fi
#Skripti lõpp
