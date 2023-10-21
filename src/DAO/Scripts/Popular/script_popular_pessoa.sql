-- Saude

#=========================================================== POPULAR TABELA USUARIO ===============================================#
INSERT INTO usuario 
(
nome,
nomecompletO,
cpfcnpj,
rg,
endereco,
numero,
bairro,
complemento,
contato,
email,
obs,
login,
senha,
id_cargo,
datahora_criacao,
datahora_alteracao,
id_usuario_criacao,
id_usuario_alteracao,
ativo
)
VALUES
#('sistemas',      'sistemas',        'sistemas',       'sistemas', 'sistemas', 'sistemas', 'sistemas', 'sistemas',    'sistemas',         'sistemas',        'sistemas', 'sistemas', 'sistemas', 1 ,'2000-01-01 00:00:00', '2000-01-01 00:00:00', 1, 1, 1),
('sistemas',       null,              null,             null,       null,       null,       null,       null,          null,               null,              null,       null,       null,       1 ,'2000-01-01 00:00:00', '2000-01-01 00:00:00', 1, 1, 1),
('administrador',  'administrador ',  '000.000.000.00', '0000000',  'endereco', 'SN',       'bairro',   'complemento', '(00) 00000-0000',  'adm@email.com', 'obs',      'adm',      '123',      1 ,'2000-01-01 00:00:00', '2000-01-01 00:00:00', 1, 1, 1)
;





#=========================================================== POPULAR TABELA CARGO ===============================================#
INSERT INTO cargo 
(
nome,
descricao,
permissao,
obs,
datahora_criacao,
datahora_alteracao,
id_usuario_criacao,
id_usuario_alteracao,
ativo
)
VALUES
('ADM', 'Administrador','acesso ...', 'observacao do paciente', '2000-01-01 00:00:00', '2000-01-01 00:00:00', 1, 1, 1)
;





#=========================================================== POPULAR TABELA PACIENTE ===============================================#
INSERT INTO paciente 
(
nome,
nomecompletO,
cpfcnpj,
rg,
endereco,
numero,
bairro,
complemento,
contato,
email,
obs,
datahora_criacao,
datahora_alteracao,
id_usuario_criacao,
id_usuario_alteracao,
ativo
)
VALUES
('paciente teste', 'paciente teste ', '325.426.703-66', '26.359.011-2', 'endereco', 'SN', 'bairro', 'complemento', '(85) 99445-1449', 'paciente@email.com', 'observacao do paciente', '2000-01-01 00:00:00', '2000-01-01 00:00:00', 1, 1, 1)
;




