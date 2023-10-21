-- Mercadoria
DROP TABLE IF EXISTS produto;
DROP TABLE IF EXISTS medida; #muda para (medida)? 
DROP TABLE IF EXISTS tipo;
DROP TABLE IF EXISTS categoria;
DROP TABLE IF EXISTS subcategoria;
DROP TABLE IF EXISTS grade;




-- Mercadoria

CREATE TABLE IF NOT EXISTS produto (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(64),
descricao VARCHAR(128),
custo DOUBLE(12,2),
margemvenda DOUBLE(12,2),
precovenda DOUBLE(12,2),
quantidade DOUBLE(12,2),
id_medida INT,
id_categoria INT,
id_estoque INT,
quantidade_minima INT NOT NULL,
monitor_baixa INT NOT NULL,
monitora_reposicao INT NOT NULL,
id_grade INT NOT NULL,
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);


CREATE TABLE IF NOT EXISTS medida (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(3),
descricao VARCHAR(32),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);


CREATE TABLE IF NOT EXISTS tipo (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(3),
descricao VARCHAR(32),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);


CREATE TABLE IF NOT EXISTS categoria (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(16),
descricao VARCHAR(32),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);


CREATE TABLE IF NOT EXISTS subcategoria (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(16),
descricao VARCHAR(32),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);


CREATE TABLE IF NOT EXISTS grade (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(16),
observacao VARCHAR(32), 
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
);


