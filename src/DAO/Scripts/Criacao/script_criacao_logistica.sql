DROP TABLE IF EXISTS entrega;

CREATE TABLE IF NOT EXISTS entrega (
id INT PRIMARY KEY AUTO_INCREMENT,
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);