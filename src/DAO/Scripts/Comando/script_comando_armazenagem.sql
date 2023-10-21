DROP TABLE IF EXISTS estoque;
DROP TABLE IF EXISTS estoquemovimentacao;

CREATE TABLE estoque (
id INT PRIMARY KEY AUTO_INCREMENT,
id_produto INT,
quantidadeatual DOUBLE(12,2),
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
ativo BOOLEAN
)
COMMENT 'nessa tabela fica todas movimentacoes de entrada e saida'
;



#=========================================================== CRUD ESTOQUE ===========================================================#

-- CREATE
INSERT INTO estoque
(id_produto, quantidadeatual, ativo)
VALUES 
(?,?,?)
;


-- READ 
SELECT id, id_produto, quantidadeatual, ativo 
FROM estoque
;


-- UPDATE
UPDATE estoque
SET
id_produto=?, quantidadeatual=?, ativo=? 


-- DELETE(SEGURO)
# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM estoque
WHERE id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE estoque
SET 
ativo = FALSE;
WHERE
id  = ?
;

#=========================================================== CRUD ESTOQUE MOVIMENTACAO ==============================================#


-- CREATE
INSERT INTO estoquemovimentacao
(id_produto, quantidadeatual, tipo, id_estoque, ativo)
VALUES 
(?,?,?)
;


-- READ 
SELECT id, id_produto, quantidadeatual, tipo, id_estoque, ativo 
FROM estoquemovimentacao
;


-- UPDATE
UPDATE estoquemovimentacao
SET
id_produto=?, quantidadeatual=?, tipo=?, id_estoque=?, ativo=? 


-- DELETE(SEGURO)
# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM estoquemovimentacao
WHERE id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE estoquemovimentacao
SET 
ativo = FALSE;
WHERE
id  = ?
;