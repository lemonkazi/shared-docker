-- vivipins-laravel
CREATE DATABASE IF NOT EXISTS vivipinslaravel;
CREATE USER IF NOT EXISTS 'vivipins_user'@'%' IDENTIFIED WITH mysql_native_password BY 'vivipins_password';
GRANT ALL PRIVILEGES ON vivipinslaravel.* TO 'vivipins_user'@'%';

-- vehicle
CREATE DATABASE IF NOT EXISTS vehicle_db;
CREATE USER IF NOT EXISTS 'vehicle_user'@'%' IDENTIFIED WITH mysql_native_password BY 'vehicle_password';
GRANT ALL PRIVILEGES ON vehicle_db.* TO 'vehicle_user'@'%';

-- pmr-medical
CREATE DATABASE IF NOT EXISTS pmrdatabase;
CREATE USER IF NOT EXISTS 'pmr_user'@'%' IDENTIFIED WITH mysql_native_password BY 'pmr_password';
GRANT ALL PRIVILEGES ON pmrdatabase.* TO 'pmr_user'@'%';

-- beats
CREATE DATABASE IF NOT EXISTS beats_db;
CREATE USER IF NOT EXISTS 'beats_user'@'%' IDENTIFIED WITH mysql_native_password BY 'beats_password';
GRANT ALL PRIVILEGES ON beats_db.* TO 'beats_user'@'%';

-- root (match docker env)
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'lightwave86';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'lightwave86';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;
