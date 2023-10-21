-- Saude
#=========================================================== CRUD CONSULTA ==============================================#

-- CREATE
INSERT INTO consulta ( id_area, id_paciente, id_usuario, datahora_abertura, ativo)
VALUES
(?,?,?,?,?)
;



-- READ 
SELECT 
id, id_area, id_paciente, id_usuario,  datahora_abertura, ativo
FROM consulta
;


-- UDPADE
UPDATE consulta
SET
id_area =?, id_paciente=?, id_usuario=?, datahora_abertura=?,  ativo=?
WHERE
id=?
;


-- DELETE(SEGURO)
# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM consulta
WHERE 
id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE consulta
SET 
ativo = FALSE;
WHERE
id  = ?
;



#=========================================================== CRUD SECAO ==============================================#

-- CREATE
INSERT INTO secao (id_consulta, secao, area_secao, nome, descricao, ativo)
VALUES
(?,?,?,?,?,?)
;



-- READ 
SELECT 
id, id_consulta, secao, area_secao, nome, descricao, ativo
FROM secao
;


-- UDPADE
UPDATE secao
SET
id_consulta=?, secao=?, area_secao=?, nome=?, descricao=?,  ativo=?
WHERE
id=?
;


-- DELETE(SEGURO)
# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM secao
WHERE 
id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE secao
SET 
ativo = FALSE;
WHERE
id  = ?
;



#=========================================================== CRUD EXERCICIO ==============================================#

-- CREATE
INSERT INTO exercicio (id_secao, nome, descricao, ativo)
VALUES
(?,?,?,?)
;


-- READ 
SELECT 
id, id_secao, nome, descricao, ativo
FROM exercicio
;


-- UDPADE
UPDATE exercicio
SET
id_secao=?, nome=?, descricao=?,  ativo=?
WHERE
id=?
;


-- DELETE(SEGURO)
# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM exercicio
WHERE 
id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE exercicio
SET 
ativo = FALSE;
WHERE
id  = ?
;




#=========================================================== CRUD METODO ==============================================#

-- CREATE
INSERT INTO metodo (id_secao, nome, descricao, ativo)
VALUES
(?,?,?,?)
;


-- READ 
SELECT 
id, id_secao, nome, descricao, ativo
FROM metodo
;


-- UDPADE
UPDATE metodo
SET
id_secao=?, nome=?, descricao=?,  ativo=?
WHERE
id=?
;


-- DELETE(SEGURO)
# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM metodo
WHERE 
id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE metodo
SET 
ativo = FALSE;
WHERE
id  = ?
;



#=========================================================== CRUD AREA ==============================================#

-- CREATE
INSERT INTO area (nome, ativo)
VALUES
(?,?)
;


-- READ 
SELECT 
id, nome, ativo
FROM area
;


-- UDPADE
UPDATE area
SET
nome=?,  ativo=?
WHERE
id=?
;


-- DELETE(SEGURO)
# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM area
WHERE 
id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE area
SET 
ativo = FALSE;
WHERE
id  = ?
;


#=========================================================== CRUD OBJETIVO ==============================================#

-- CREATE
INSERT INTO objetivo (nome, ativo)
VALUES
(?,?)
;


-- READ 
SELECT 
id, nome, ativo
FROM objetivo
;


-- UDPADE
UPDATE objetivo
SET
nome=?,  ativo=?
WHERE
id=?
;


-- DELETE(SEGURO)
# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM objetivo
WHERE 
id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE objetivo
SET 
ativo = FALSE;
WHERE
id  = ?
;







#=========================================================== CRUD TAREFA ==============================================#

-- CREATE
INSERT INTO objetivo (nome, ativo)
VALUES
(?,?)
;


-- READ 
SELECT 
id, nome, ativo
FROM objetivo
;


-- UDPADE
UPDATE objetivo
SET
nome=?,  ativo=?
WHERE
id=?
;


-- DELETE(SEGURO)
# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM objetivo
WHERE 
id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE objetivo
SET 
ativo = FALSE;
WHERE
id  = ?
;







#=========================================================== CRUD TAREFAITEM ==============================================#

-- CREATE
INSERT INTO objetivo (nome, ativo)
VALUES
(?,?)
;


-- READ 
SELECT 
id, nome, ativo
FROM objetivo
;


-- UDPADE
UPDATE objetivo
SET
nome=?,  ativo=?
WHERE
id=?
;


-- DELETE(SEGURO)
# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM objetivo
WHERE 
id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE objetivo
SET 
ativo = FALSE;
WHERE
id  = ?
;












