-- Saude

#=========================================================== POPULAR TABELA AREA ===============================================#
INSERT INTO area 
(
nome, 
datahora_criacao,
datahora_alteracao,
id_usuario_criacao,
id_usuario_alteracao,
ativo
)
VALUES
('FONOAUDIOLOGO', '2000-01-01 00:00:00', '2000-01-01 00:00:00', 1, 1, 1), 
('FISIOTERAPIA',  '2000-01-01 00:00:00', '2000-01-01 00:00:00', 1, 1, 1),
('NUTRICAO',      '2000-01-01 00:00:00', '2000-01-01 00:00:00', 1, 1, 1),
('MASSOTERAPIA',  '2000-01-01 00:00:00', '2000-01-01 00:00:00', 1, 1, 1)
;





#=========================================================== POPULAR TABELA CONSULTA ===========================================#
INSERT INTO consulta
(
nome,
id_area,
id_paciente,
id_usuario, 
datahora_abertura, 
data_fechamento, 
datahora_criacao,
datahora_alteracao,
id_usuario_criacao,
id_usuario_alteracao,
ativo
)
VALUES
('consulta teste aberta'  , 1, 1, 1, '2000-01-01 00:00:00', null,  '2000-01-01 00:00:00', '2000-01-01 00:00:00', 1 , 1, true),  # consulta exemplo teste aberto
('consulta teste fechado' , 1, 1, 1, '2000-01-01 00:00:00', now(), '2000-01-01 00:00:00', '2000-01-01 00:00:00', 1 , 1, true)   # consulta exemplo teste fechado
;



#=========================================================== POPULAR TABELA SECAO ==============================================#
INSERT INTO secao
(
nome,
id_consulta,
numero_secao,
area_secao,
descricao,
resultado,
avaliacao,
datahora_abertura,
datahora_fechamento,
datahora_criacao,
datahora_alteracao,
id_usuario_criacao,
id_usuario_alteracao,
ativo
)
VALUES
('secao de teste', 1, 1, 1, 'secao teste descricao', 'avalicao da secao', 5.00, '2000-01-01 00:00:00', '2000-01-01 00:00:00', '2000-01-01 00:00:00', '2000-01-01 00:00:00', 1, 1, 1),
('secao de teste', 1, 2, 1, 'secao teste descricao', 'avalicao da secao', 5.00, '2000-01-01 00:00:00', '2000-01-01 00:00:00', '2000-01-01 00:00:00', '2000-01-01 00:00:00', 1, 1, 1),
('secao de teste', 2, 1, 1, 'secao teste descricao', 'avalicao da secao', 5.00, '2000-01-01 00:00:00', '2000-01-01 00:00:00', '2000-01-01 00:00:00', '2000-01-01 00:00:00', 1, 1, 1)
;









#=========================================================== POPULAR TABELA EXERCICIO ==========================================#
INSERT INTO exercicio (id_secao, nome, descricao, ativo)
VALUES
(1, 'EXERCICIO TESTE 1 NOME', 'EXERCICIO TESTE 1 DESCRICAO', 1)
;



#=========================================================== POPULAR TABELA METODO =============================================#
INSERT INTO metodo (id_secao, nome, descricao, ativo)
VALUES
(1, 'EXERCICIO TESTE 1 NOME', 'EXERCICIO TESTE 1 DESCRICAO', 1)
;


#=========================================================== POPULAR TABELA OBJETIVO ===========================================#

INSERT INTO objetivo (nome, descricao, ativo)
VALUES
('OBJETIVO TESTE NOME', 'OBJETIVO TESTE DESCRICAO', 1)
;
