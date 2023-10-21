DROP TABLE IF EXISTS checkinout;
DROP TABLE IF EXISTS hotel;
DROP TABLE IF EXISTS imovel;

CREATE TABLE IF NOT EXISTS checkinout (
id INT PRIMARY KEY AUTO_INCREMENT,
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);

CREATE TABLE IF NOT EXISTS hotel (
id INT PRIMARY KEY AUTO_INCREMENT,
atdatahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);


CREATE TABLE IF NOT EXISTS imovel (
id INT PRIMARY KEY AUTO_INCREMENT,
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);
