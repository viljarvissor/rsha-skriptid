# RSHA-SKRIPTID
## Eesmärk
Skriptid instaleerivad wordpressi Apache2 peale ja lisab juurde weel mysql serveri ja phpmyadmini
### github paigaldus
#### Paigaldamine

apt install git

#### Seadistamine
```
git config --global user.name "Eesnimi Perenimi"
git config --global user.email email@domeen.com
git config --global core.editor nano
```
### Skriptid tuleb aktiveerida järjekorras nagu on kirjutatud
#### apache_paigaldus.sh
Tõmbab alla apche2 apt abil

#### php_paigaldus.sh
Skript tõmbab alla php7.0 koos lisa moodulitega apt abil

#### mysql-paigaldus.sh
Skript paigaldab mysql serveri ja loob kodukausta .my.cnf faili, mis võimaldab käivitada mysql käsku ilma sisse logimiseta

#### wordpress-andmebaas.sh
Loob wordpress andmebaasi ja kasutaqja
```
Andmebaas: Wordpress
Kasutaja: Wordpressuser
Kasutaja parool: qwerty

#### pma_paigaldus.sh
Skript instaleerib phpmyadmini
```
Skripti käivitades tuleb valida Apache2 veebileht
Skript küsib kas soovite automaatselt luua mysql andmebaasi, kui ei ole teist soovi siis valige 'JAH'
```
#### wordpress_paigaldus.sh
Tõmbab alla wordpress paketi, pakib selle lahti, liigutab õigesse kohta ja muudab config faili sisu
##### wp-config-sample.php
fail asub /var/www/html/wordpress kaustas
Copeeritakse wp-config.php ja jäetakse example fail alles, kui seda kunagi vaja läheks uuesti
Wordpress config failis muudetakse:
```
"database_name_here" loodud andmebaasiga "wordpress"
"username_here" loodud kasutajanimega "wordpressuser"
"password_here" loodud kasutaja parooliga "qwerty"
```
```
Wordpressile saab kätte nii: {serveri IP}/wordpress
Myphpadminile saab kätte nii: {serveri IP}/myphpadmin
```
