-- entrada e saida
DROP TABLE IF EXISTS venda;
DROP TABLE IF EXISTS vendaitem;
DROP TABLE IF EXISTS pedidovenda;
DROP TABLE IF EXISTS pedidovendaitem;
-- DROP TABLE IF EXISTS pedidocompra; # pedido de item que deve comprados(de fornecedor ou vario)
-- DROP TABLE IF EXISTS pedidocompraitem;



CREATE TABLE IF NOT EXISTS venda (
id INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT,
id_usuario INT,
id_caixa INT,
total_custo DOUBLE(12,2)			COMMENT '',
total_venda DOUBLE(12,2)			COMMENT '',
quantidade_item DOUBLE(12,2)		COMMENT '',
valor_desconto DOUBLE(12,2),
valor_acrescimo DOUBLE(12,2),
margem_venda DOUBLE(12,2)			COMMENT '',
status VARCHAR(12)					COMMENT 'OK, CANCELADO, ERRO',
id_forma_pagamento INT,
valor_recebido DOUBLE(12,2),
valor_troco DOUBLE(12,2),
datahora_venda DATETIME,
datahora_cancelamento DATETIME,
id_usuario_cancelou INT,
motivo_cancelamento VARCHAR(255),
motivo_erro VARCHAR(255)			COMMENT 'NIVEL DE ERRO: SISTEMA, OPERACIONAL',
obs VARCHAR(255)
)
COMMENT 'TABELA DE CABECALHO DA VENDA'
;

CREATE TABLE IF NOT EXISTS vendaitem (
id INT PRIMARY KEY AUTO_INCREMENT,
id_venda INT,
id_produto INT,
id_estoque INT,
item INT 							COMMENT 'numero do item na lista de compra',
custo DOUBLE(12,2),
precovenda DOUBLE(12,2),
quantidade DOUBLE(12,2),
total DOUBLE(12,2),
desconto_forma VARCHAR(1) 			COMMENT '$, %',
valor_desconto  DOUBLE(12,2),
desconto_forma VARCHAR(1) 			COMMENT '$, %',
valor_acrescimo DOUBLE(12,2),
subtotal DOUBLE(12,2)				COMMENT '',
margem_lucro DOUBLE(12,2)			COMMENT '',
margem_venda DOUBLE(12,2)			COMMENT '',
datahora_DATETIME,
status VARCHAR(12)					COMMENT 'OK, CANCELADO',
motivo_cancelamento VARCHAR(64),
		 		
)
COMMENT ''
;

CREATE TABLE IF NOT EXISTS pedidovenda (
id INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT,
id_usuario INT,
nome VARCHAR(255),
descricao VARCHAR(255),
custo DOUBLE(12,2),
precovenda DOUBLE(12,2),
quantidade DOUBLE(12,2),
total DOUBLE(12,2),
subtotal DOUBLE(12,2),
margemvenda DOUBLE(12,2)		COMMENT '',
status VARCHAR(12)				COMMENT 'OK, CANCELADO, ERRO',
id_forma_pagamento INT
)
COMMENT 'TABELA DE CABECALHO DO PEDIDO DE VENDA'
;

CREATE TABLE IF NOT EXISTS pedidovendaitem (
id INT PRIMARY KEY AUTO_INCREMENT,
id_pedido INT,
id_produto INT,
nome VARCHAR(255),
descricao VARCHAR(255),
custo DOUBLE(12,2),
margemvenda DOUBLE(12,2)		COMMENT '',
precovenda DOUBLE(12,2)			COMMENT '',
quantidade DOUBLE(12,2)
)
COMMENT ''
;