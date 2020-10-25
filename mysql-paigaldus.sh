#!/bin/bash
#
#Kontrollime kas Mysql on olemas ja kui ei ole siis instaleerime selle
#!/bin/bash

MYSQL=$(dpkg-query -W -f='${Status}' mysql-server 2>/dev/null | grep -c 'ok installed')

if [ $MYSQL -eq 0 ]; then
	#MySQL ei ole ja on vaja instaleerida
	echo "MYSQL serveri paigaldus koos vajalike lisadega..."
	apt-get install mysql-server
	echo "MYSQL server on paigaltatud"
	#Liusame võimaluse kasutada mysql käske ilma kasutaja ja parooli lisamata
	touch $HOME/.my.cnf # Lisame vjalikud konfiguratsiooni failid antud kasutja kodukausta
	echo "[client]" >> $HOME/.my.cnf
	echo "host = localhost" >> $HOME/.my.cnf
	echo "user = root" >> $HOME/.my.cnf
	echo "password = qwerty" >> $HOME/.my.cnf
	echo "Konfiguratsiooni fail asub kaustas $HOME/.my.cnf"
elif [ $MYSQL -eq 1 ]; then
	#MYSQL on olemas ja ei ole vaja instaleerida
	echo "MYSQL server on juba paigaltatud"
	mysql
fi
#Skripti lõpp
