USE syslogdb;

CREATE TABLE logs (
	    datetime VARCHAR(16),
	    host VARCHAR(32),
	    program VARCHAR(20),
	    pid VARCHAR(8),
	    message VARCHAR(200)
);


-- Crie o usuário
CREATE USER 'syslogserver'@'%' IDENTIFIED BY 'Syslog#123db';

-- Conceda privilégios ao usuário no banco de dados currentTS
GRANT ALL PRIVILEGES ON syslogdb.* TO 'syslogserver'@'%';

-- Atualize os privilégios
FLUSH PRIVILEGES;
