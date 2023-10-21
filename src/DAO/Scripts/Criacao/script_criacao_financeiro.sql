DROP TABLE IF EXISTS pagamento;
DROP TABLE IF EXISTS recebimento;
DROP TABLE IF EXISTS forma_de_pagamento;

CREATE TABLE IF NOT EXISTS pagamento (
id INT PRIMARY KEY AUTO_INCREMENT,
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);



CREATE TABLE IF NOT EXISTS recebimento (
id INT PRIMARY KEY AUTO_INCREMENT,
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);


CREATE TABLE forma_de_pagamento (
id INT PRIMARY KEY NOT NULL,
nome VARCHAR(32) NOT NULL,
descricao INT NOT NULL,
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN

);