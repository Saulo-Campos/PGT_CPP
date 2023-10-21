#=========================================================== CRUD USUARIO ===========================================================#

-- CREATE
INSERT INTO usuario(id, nome, senha, nomecompleto, rg, cpfcnpj, endereco, numero, bairro, complemento, contato1, contato2, email, id_cargo, ativo)
VALUES
(1,  'master', '123', 'mastrer system', '123456789', '12345678901', 'endereco a editar', 'sem Numero', 'bairro a editar', 'complemento a editar', '(01) 12345-6789' '(02) 12345-6789', 'master@system.com', 1, TRUE)
;


-- READ
SELECT id, nome, senha, nomecompleto, rg, cpfcnpj, endereco, numero, bairro, complemento, contato1, contato2, email, id_cargo, ativo
FROM usuario
;


-- UPDATE
UPDATE usuario
SET 
nome =?, senha=?, nomecompleto=?, rg=?, cpfcnpj=?, endereco=?, numero=?, bairro=?, complemento=?, contato1=?, contato2=?, email=?, id_cargo=?, ativo=?
WHERE
id  = ?
;


-- DELETE (SEGURO)

# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM usuario
WHERE id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE usuario
SET 
ativo = FALSE;
WHERE
id  = ?
;




-- LOGIN DE USUARIO
SELECT * FROM usuario where nome = ? and senha = ? limit 1;

-- 















#=========================================================== CRUD CLIENTE ===========================================================#

-- CREATE
INSERT INTO cliente(id, nome, senha, nomecompleto, rg, cpfcnpj, endereco, numero, bairro, complemento, contato1, contato2, email, ativo)
VALUES
(1,  'cliente teste', '123', 'cliente teste', '123456789', '12345678901', 'endereco a editar', 'sem Numero', 'bairro a editar', 'complemento a editar', '(01) 12345-6789' '(02) 12345-6789', 'cliente@teste.com', TRUE)
;


-- READ
SELECT id, nome, senha, nomecompleto, rg, cpfcnpj, endereco, numero, bairro, complemento, contato1, contato2, email, ativo
FROM cliente;


-- UPDATE
UPDATE cliente
SET 
id = ?, nome =?, senha=?, nomecompleto=?, rg=?, cpfcnpj=?, endereco=?, numero=?, bairro=?, complemento=?, contato1=?, contato2=?, email=?, ativo=?
WHERE
id  = ?
;


-- DELETE(SEGURO)

# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM cliente
WHERE id = ?;


# inativa esse registro no banco (permissao basica)
UPDATE cliente
SET 
ativo = FALSE;
WHERE
id  = ?
;



#=========================================================== CRUD FORNECEDOR ===========================================================#

-- CREATE
INSERT INTO fornecedor(id, nome, senha, nomecompleto, rg, cpfcnpj, endereco, numero, bairro, complemento, contato1, contato2, email, ativo)
VALUES
(1,  'fornecedor teste', '123', 'fornecedor teste', '123456789', '12345678901', 'endereco a editar', 'sem Numero', 'bairro a editar', 'complemento a editar', '(01) 12345-6789' '(02) 12345-6789', 'fornecedor@teste.com', TRUE)
;


-- READ
SELECT id, nome, senha, nomecompleto, rg, cpfcnpj, endereco, numero, bairro, complemento, contato1, contato2, email, ativo
FROM fornecedor
;


-- UPDATE
UPDATE fornecedor
SET 
nome =?, senha=?, nomecompleto=?, rg=?, cpfcnpj=?, endereco=?, numero=?, bairro=?, complemento=?, contato1=?, contato2=?, email=?, ativo=?
WHERE
id  = ?
;

-- DELETE (SEGURO)

# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM fornecedor
WHERE id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE fornecedor
SET 
ativo = FALSE;
WHERE
id  = ?
;
 
 
#=========================================================== CRUD PACIENTE ===========================================================#

-- CREATE
INSERT INTO paciente(id, nome, senha, nomecompleto, rg, cpfcnpj, endereco, numero, bairro, complemento, contato1, contato2, email, id_cargo, ativo)
VALUES
('paciente teste', '123', 'paciente teste', '123456789', '12345678901', 'endereco a editar', 'sem Numero', 'bairro a editar', 'complemento a editar', '(01) 12345-6789' '(02) 12345-6789', 'paciente@teste.com', TRUE)
;


-- READ
SELECT id, nome, senha, nomecompleto, rg, cpfcnpj, endereco, numero, bairro, complemento, contato1, contato2, email, ativo
FROM paciente
;


-- UPDATE
UPDATE paciente
SET 
nome =?, senha=?, nomecompleto=?, rg=?, cpfcnpj=?, endereco=?, numero=?, bairro=?, complemento=?, contato1=?, contato2=?, email=?, ativo=?
WHERE
id  = ?
;


-- DELETE (SEGURO)

# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM paciente
WHERE id = ?
;


# inativa esse registro no banco (permissao basica)
UPDATE paciente
SET 
ativo = FALSE
WHERE
id  = ?
;

# inativa em lote os registros
UPDATE paciente
SET 
ativo = FALSE
WHERE
id  in(?)
;
 
 
  #=========================================================== CRUD CARGO ===========================================================#

-- CREATE
INSERT INTO cargo(nome, permissao, ativo)
VALUES
('master', 'mastrer system', TRUE)
;


-- READ
SELECT id, nome, permissao, ativo
FROM cargo
;


-- UPDATE
UPDATE paciente
SET 
nome = ?, permissao = ?, ativo =?
WHERE
id  = ?
;


-- DELETE (SEGURO)

# apaga o registro pemanetemente do banco(permissao superior DBA)
DELETE FROM paciente
WHERE id = ?;


# inativa esse registro no banco (permissao basica)
UPDATE paciente
SET 
ativo = FALSE
WHERE
id  = ?
;

# inativa em lote os registros
UPDATE paciente
SET 
ativo = FALSE
WHERE
id in(?)
;
 
 
 









