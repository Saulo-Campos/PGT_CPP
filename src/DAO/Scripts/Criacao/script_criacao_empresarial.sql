DROP TABLE IF EXISTS empresa;

CREATE TABLE IF NOT EXISTS empresa (
id INT PRIMARY KEY AUTO_INCREMENT,
fantasia VARCHAR(64),
razaosocial VARCHAR(100),
rg VARCHAR(12),
cpfcnpj VARCHAR(14),
ei VARCHAR(14),
endereco VARCHAR(100),
numero VARCHAR(8),
bairro VARCHAR(100),
complemento VARCHAR(128),
contato VARCHAR(16),
email VARCHAR(128),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
)
COMMENT ''
;
