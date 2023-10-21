-- Pessoas
DROP TABLE IF EXISTS usuario;
DROP TABLE IF EXISTS cargo;
DROP TABLE IF EXISTS paciente;
DROP TABLE IF EXISTS cliente;
DROP TABLE IF EXISTS fornecedor;






-- Pessoas

CREATE TABLE IF NOT EXISTS usuario (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(64),
nomecompleto VARCHAR(100),
cpfcnpj VARCHAR(14),
rg VARCHAR(12),
endereco VARCHAR(100),
numero VARCHAR(8),
bairro VARCHAR(100),
complemento VARCHAR(128),
contato VARCHAR(16),
email VARCHAR(128),
obs VARCHAR(255),
login VARCHAR(32),
senha VARCHAR(32),
id_cargo INT(11),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
)
COMMENT ''
;


CREATE TABLE IF NOT EXISTS cargo (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(32),
descricao VARCHAR(128),
permissao VARCHAR(255),
obs VARCHAR(255),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
)
COMMENT ''
;


CREATE TABLE IF NOT EXISTS paciente (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(64),
nomecompleto VARCHAR(100),
cpfcnpj VARCHAR(14),
rg VARCHAR(12),
endereco VARCHAR(100),
numero VARCHAR(8),
bairro VARCHAR(100),
complemento VARCHAR(128),
contato VARCHAR(16),
email VARCHAR(128),
obs VARCHAR(255),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
)
COMMENT ''
;


CREATE TABLE IF NOT EXISTS cliente (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(64),
nomecompleto VARCHAR(100),
cpfcnpj VARCHAR(14),
rg VARCHAR(12),
endereco VARCHAR(100),
numero VARCHAR(8),
bairro VARCHAR(100),
complemento VARCHAR(128),
contato VARCHAR(16),
email VARCHAR(128),
obs VARCHAR(255),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
)
COMMENT ''
;


CREATE TABLE IF NOT EXISTS fornecedor (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(64),
nomecompleto VARCHAR(100),
cpfcnpj VARCHAR(14),
rg VARCHAR(12),
endereco VARCHAR(100),
numero VARCHAR(8),
bairro VARCHAR(100),
complemento VARCHAR(128),
contato VARCHAR(16),
email VARCHAR(128),
obs VARCHAR(255),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
)
COMMENT ''
;










