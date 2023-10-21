DROP TABLE IF EXISTS cidade;
DROP TABLE IF EXISTS estado;

CREATE TABLE IF NOT EXISTS cidade (
id INT PRIMARY KEY AUTO_INCREMENT,
descricao VARCHAR(32),
codigo_cidade VARCHAR(16),
codigo_estado VARCHAR(16),
ativo BOOLEAN
)
COMMENT ''
;

CREATE TABLE IF NOT EXISTS estado (
id INT PRIMARY KEY AUTO_INCREMENT,
descricao VARCHAR(32),
codigo_estado VARCHAR(16),
ativo BOOLEAN
)
COMMENT ''
;




#=========================================================== CRUD cidade ==============================================#

-- CREATE
INSERT INTO cidade(descricao, codigo_cidade, codigo_estado, ativo)
VALUES
(?,?,?,?)
;


-- READ 
SELECT 
id, descricao, codigo_cidade, codigo_estado, ativo
FROM cidade
;


-- UDPADE
UPDATE cidade
SET
descricao=?, codigo_cidade=?, codigo_estado=?, ativo=?
WHERE
id=?
;

-- DELETE(SEGURO)
# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM cidade
WHERE 
id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE estoquemovimentacao
SET 
ativo = FALSE;
WHERE
id  = ?
;


#=========================================================== CRUD ESTADO ==============================================#

-- CREATE
INSERT INTO estado(descricao, codigo_estado, ativo)
VALUES
(?,?,?)
;


-- READ 
SELECT 
id, descricao, codigo_estado, ativo
FROM estado
;


-- UDPADE
UPDATE estado
SET
descricao=?, codigo_cidade=?, codigo_estado=?, ativo=?
WHERE
id=?
;

-- DELETE(SEGURO)
# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM estado
WHERE 
id=?
;


# inativa esse registro no banco (permissao basica)
UPDATE estado
SET 
ativo = FALSE;
WHERE
id  = ?
;