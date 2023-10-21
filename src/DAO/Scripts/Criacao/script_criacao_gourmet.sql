DROP TABLE IF EXISTS mesa;
DROP TABLE IF EXISTS pedidogourmet;
DROP TABLE IF EXISTS entragagourmet;

CREATE TABLE IF NOT EXISTS mesa (
id INT PRIMARY KEY AUTO_INCREMENT,
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);

CREATE TABLE IF NOT EXISTS pedidogourmet (
id INT PRIMARY KEY AUTO_INCREMENT,
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);

CREATE TABLE IF NOT EXISTS entregagourmet (
id INT PRIMARY KEY AUTO_INCREMENT,
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);
