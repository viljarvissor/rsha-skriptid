#!/bin/bash
#
#Skript kontrollib kas apache2 on instaleeritud ja kui ei ole siis ... 
#...instaleerib selle
APACHE2=$(dpkg-query -W -f='${Status}' apache2 2>/dev/null | grep -c 'ok installed')
if [ $APACHE2 -eq 0 ]; then
	#Apache2 on puuda ja nüüd algab instaleerimine
        echo "Apache2 instaleerimine..."
        apt-get install apache2 -qq > /dev/null
        echo "Apache2 instaleeritud"
elif [ $APACHE2 -eq 1 ]; then
	#Apache2 on olemas ja ei ole midagi vaja juurde instaleerida
        echo "Apache2 on juba instaleeritud"
        service apache2 start
        service apache2 status
fi
#Skripti lõpp
