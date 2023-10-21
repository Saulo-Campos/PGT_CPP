DROP TABLE IF EXISTS estoque;
DROP TABLE IF EXISTS estoquemovimentacao;

CREATE TABLE estoque (
id INT PRIMARY KEY AUTO_INCREMENT,
id_produto INT,
quantidadeatual DOUBLE(12,2),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
)
COMMENT 'nessa tabela fica salvo o estoque do produto'
;



CREATE TABLE estoquemovimentacao (
id INT PRIMARY KEY AUTO_INCREMENT,
id_produto INT,
quantidadeatual DOUBLE(12,2),
tipo VARCHAR(15),
id_estoque INT(11),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
)
COMMENT 'nessa tabela fica todas movimentacoes de entrada e saida'
;