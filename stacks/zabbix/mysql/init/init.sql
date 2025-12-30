-- Usuário geral para monitoramento MySQL
CREATE USER IF NOT EXISTS 'zbxmonitor'@'%' IDENTIFIED BY 'zbxpass';
GRANT REPLICATION CLIENT,PROCESS,SHOW DATABASES,SHOW VIEW ON *.* TO 'zbx_monitor'@'%';
FLUSH PRIVILEGES;

-- Permitir acesso root de qualquer IP (em ambiente controlado, como um lab)
--ALTER USER 'root'@'%' IDENTIFIED BY 'P@ssw0rd#001';
--FLUSH PRIVILEGES;

--USE zabbix;

-- Cria um usuário Super Admin (type=3)
--INSERT INTO users (alias, name, surname, passwd, type, lang, refresh, theme, autologout)
--VALUES ('zbxroot', 'Zabbix', 'Root', MD5('StrongPass123!'), 3, 'en_GB', '30s', 'default', '0');

-- Captura o último ID criado
--SET @userid = LAST_INSERT_ID();

-- Vincula ao grupo 'Zabbix Super Admins' (normalmente usrgrpid = 7)
--INSERT INTO users_groups (usrgrpid, userid) VALUES (7, @userid);