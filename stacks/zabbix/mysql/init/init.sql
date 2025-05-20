-- Usuário geral para monitoramento MySQL
CREATE USER IF NOT EXISTS 'zbx_monitor'@'%' IDENTIFIED BY 'zbx4monitor';
GRANT REPLICATION CLIENT,PROCESS,SHOW DATABASES,SHOW VIEW ON *.* TO 'zbx_monitor'@'%';
FLUSH PRIVILEGES;

-- Banco do GLPi
CREATE DATABASE IF NOT EXISTS glpi_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS 'glpi_user'@'%' IDENTIFIED BY 'glpi_password';
GRANT ALL PRIVILEGES ON glpi_db.* TO 'glpi_user'@'%';

FLUSH PRIVILEGES;