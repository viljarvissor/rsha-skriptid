# Skript loob wordpressi jaoks vajaliku mysql andmebaasi ja selle aksutaja
mysql <<EOF
CREATE DATABASE wordpress;
CREATE USER 'wordpressuser'@'localhost' IDENTIFIED BY 'qwerty';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'localhost';
FLUSH PRIVILEGES;
SHOW DATABASES;
EOF
# Skripti lõpp
