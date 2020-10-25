#!/bin/bash
#
# Skript kontrollib kas php my admin on instaleeritud ja vajadusel installib slle
PMA=$(dpkg-query -W -f='{$Status}' phpmyadmin 2>/dev/null | grep -c 'ok installed')
# If statment
if [ $PMA -eq 0 ]; then
	# Ei ole php  my admini ja on vaja instaleerida
	echo "PHPmyadmin paigaldamine koos vajalike lisadega..."
	apt-get install phpmyadmin -y
	echo "PHPmyadmin on paigaltatud"
elif [ $PMA -eq 1 ]; then
	# On olemas ja ei ole vaja instaleerida
	echo "PHPmyadmin on juba paigaltatud"
fi
#Skripti lõpp
