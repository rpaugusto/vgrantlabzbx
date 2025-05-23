-- Usuário geral para monitoramento MySQL
CREATE USER IF NOT EXISTS 'zbxmonitor'@'%' IDENTIFIED BY 'zbxpass';
GRANT REPLICATION CLIENT,PROCESS,SHOW DATABASES,SHOW VIEW ON *.* TO 'zbx_monitor'@'%';
FLUSH PRIVILEGES;

-- Permitir acesso root de qualquer IP (em ambiente controlado, como um lab)
ALTER USER 'root'@'%' IDENTIFIED BY 'P@ssw0rd#001';
FLUSH PRIVILEGES;