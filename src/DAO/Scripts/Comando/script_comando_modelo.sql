#=========================================================== CRUD TABELA ==============================================#

-- CREATE
INSERT INTO tabela (, ativo)
VALUES
(?,)
;


-- READ 
SELECT 
id, ativo
FROM tabela
;


-- UDPADE
UPDATE tabela
SET
ativo=?
WHERE
id=?
;


-- DELETE(SEGURO)
# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM tabela
WHERE 
id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE tabela
SET 
ativo = FALSE;
WHERE
id  = ?
;






























#--------------------------outro teste---------------------
ALTER TABLE `secao` ADD COLUMN `id_secao` INT(11) COMMENT 'id da secao do paciente' AFTER `ativo`;

