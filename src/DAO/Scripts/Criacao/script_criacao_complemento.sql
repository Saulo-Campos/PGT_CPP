DROP TABLE IF EXISTS cidade;
DROP TABLE IF EXISTS estado;

CREATE TABLE IF NOT EXISTS cidade (
id INT PRIMARY KEY AUTO_INCREMENT,
descricao VARCHAR(32),
codigo_cidade VARCHAR(16),
codigo_estado VARCHAR(16),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
)
COMMENT ''
;

CREATE TABLE IF NOT EXISTS estado (
id INT PRIMARY KEY AUTO_INCREMENT,
descricao VARCHAR(32),
codigo_estado VARCHAR(16),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
)
COMMENT ''
;