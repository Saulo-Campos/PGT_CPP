-- Saude
DROP TABLE IF EXISTS area;      ## fonoaudiologia, fisicoterapia, massoterapia
DROP TABLE IF EXISTS consulta;  
DROP TABLE IF EXISTS secao;



DROP TABLE IF EXISTS exercicio;
DROP TABLE IF EXISTS metodo;
DROP TABLE IF EXISTS objetivo;

/**/
# TESTE MUDDA DE DEPOIS
DROP TABLE IF EXISTS tarefa;
DROP TABLE IF EXISTS tarefaItem;

DROP TABLE IF EXISTS leitura;
DROP TABLE IF EXISTS adicao;
DROP TABLE IF EXISTS retricoes;
/**/



CREATE TABLE IF NOT EXISTS area (
id 				INT PRIMARY KEY AUTO_INCREMENT,
nome 				VARCHAR(255)	COMMENT 'fonoaudiologia, fisicoterapia, massoterapia, ...',
datahora_criacao		DATETIME	COMMENT '',
datahora_alteracao		DATETIME	COMMENT '',
id_usuario_criacao		INT		COMMENT '',
id_usuario_alteracao		INT		COMMENT '',
ativo 				BOOLEAN		COMMENT ''
)
COMMENT ''
;



CREATE TABLE IF NOT EXISTS consulta (
id 				INT PRIMARY KEY AUTO_INCREMENT,
nome 				varchar(32)	COMMENT '',
id_area 			INT		COMMENT '',
id_paciente 			INT		COMMENT '',
id_usuario 			INT		COMMENT '',
datahora_abertura		DATETIME	COMMENT '',
datahora_fechamento 		DATETIME	COMMENT '',
datahora_criacao  		DATETIME	COMMENT '',
datahora_alteracao  		DATETIME	COMMENT '',
id_usuario_criacao  		INT		COMMENT '',
id_usuario_alteracao  		INT		COMMENT '',
ativo 				BOOLEAN		COMMENT ''
)
COMMENT ''
;

CREATE TABLE IF NOT EXISTS secao (
id 				INT PRIMARY KEY AUTO_INCREMENT,
nome 				VARCHAR(255)	COMMENT '',
id_consulta 			INT		COMMENT '',
numero_secao 			INT		COMMENT '',
area_secao 			INT		COMMENT '',
descricao 			VARCHAR(255)	COMMENT '',
datahora_abertura 		DATETIME	COMMENT '',
datahora_fechamento 		DATETIME	COMMENT '',
resultado 			VARCHAR(255)	COMMENT '',
avaliacao 			DOUBLE(3,2)	COMMENT '',
datahora_criacao  		DATETIME	COMMENT '',
datahora_alteracao  		DATETIME	COMMENT '',
id_usuario_criacao  		INT		COMMENT '',
id_usuario_alteracao  		INT		COMMENT '',
ativo 				BOOLEAN		COMMENT ''
)
COMMENT ''
;








CREATE TABLE IF NOT EXISTS secao_meta (
id 				INT PRIMARY KEY AUTO_INCREMENT,
id_secao   			INT		COMMENT '',
id_meta    			INT		COMMENT '',
datahora_criacao  		DATETIME	COMMENT '',
datahora_alteracao  		DATETIME	COMMENT '',
id_usuario_criacao     		INT		COMMENT '',
id_usuario_alteracao   		INT		COMMENT '',
ativo 				BOOLEAN		COMMENT ''
)
COMMENT ''
;






CREATE TABLE IF NOT EXISTS tipo_meta (
id 				INT PRIMARY KEY AUTO_INCREMENT,
nome 				VARCHAR(255)	COMMENT '',
descricao 			VARCHAR(255)	COMMENT '',
-- icon 			MEDIOBLOB	COMMENT '',
-- tem_prazo 			BOOLEAN		COMMENT '',
-- tem_acao 			BOOLEAN		COMMENT '',
-- tem_custo 			BOOLEAN		COMMENT '',
datahora_criacao  		DATETIME	COMMENT '',
datahora_alteracao  		DATETIME	COMMENT '',
id_usuario_criacao     		INT		COMMENT '',
id_usuario_alteracao    	INT		COMMENT '',
ativo 				BOOLEAN		COMMENT ''
)
COMMENT ''
;





CREATE TABLE IF NOT EXISTS META (
id 				INT PRIMARY KEY AUTO_INCREMENT,
id_secao 			INT		COMMENT '',
predefinida 			BOOLEAN		COMMENT	'modelo predefinido ( todos os usuario pode Ter) , personalizado(apenas em especifico)',
tipo  				INT		COMMENT 'define a o tipo  prefefinido EX.: exercicio, metodos, leitura, tafera, rotinas, retricoes, obrigacoes, lembrete',
		

nome VARCHAR(255),
descricao 			VARCHAR(255)	COMMENT '',
prioridade 			VARCHAR(16) 	COMMENT 'BAIXO, MEDIO, ALTO',
status 				VARCHAR(32)  	COMMENT 'EM ESPERA ,EM PROCESSO, COMPLETADO ',


# tarefas, rotina
id_meta_antecessor  		INT 		COMMENT	'fazer depois de qual meta?', 
prazo_datahora_inicio 		DATETIME	COMMENT '',		
prazo_datahora_termino		DATETIME	COMMENT '',
acao_duracao_acao 		TIME		COMMENT '',
acao_quantidade_acao 		INT		COMMENT '',
acao_quantidade_repetir 	INT		COMMENT '',
acao_duracao_descanso 		TIME		COMMENT '',
rotina_periodo 			VARCHAR(255)	COMMENT	'diario,semanal,mensal, anual',
rotina_dias_semana 		VARCHAR(255)	COMMENT	'seg, ter, qua, qui, sex, sab, dom',
rotina_dias_mensal 		VARCHAR(255)	COMMENT	'(M){D...}',	

 


processo 			INT 		COMMENT 'mostra a porcentagem da meta',
datahora_finalizado 		DATETIME	COMMENT '',
avaliacao 			INT		COMMENT '',



obs 				VARCHAR(255)	COMMENT '',
datahora_criacao  		DATETIME	COMMENT '',
datahora_alteracao  		DATETIME	COMMENT '',
id_usuario_criacao  		INT		COMMENT '',
id_usuario_alteracao  		INT		COMMENT '',
ativo 				BOOLEAN		COMMENT '',
)
COMMENT ''
;








CREATE TABLE IF NOT EXISTS secao_exercicio (
id INT PRIMARY KEY AUTO_INCREMENT,
id_secao INT(11),
datahora_abertura DATETIME,
datahora_fechamento DATETIME,
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
)
COMMENT ''
;

CREATE TABLE IF NOT EXISTS exercicio (
id INT PRIMARY KEY AUTO_INCREMENT,
id_secao INT(11),
nome VARCHAR(255),
descricao VARCHAR(255),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
)
COMMENT ''
;


CREATE TABLE IF NOT EXISTS objetivo (
id INT PRIMARY KEY AUTO_INCREMENT,
id_secao INT(11),
id_meta INT(11),
datahora_criacao  DATETIME,
datahora_alteracao  DATETIME,
id_usuario_criacao  INT,
id_usuario_alteracao  INT,
ativo BOOLEAN
)
COMMENT ''
;



/*=============================================== objetivo ====================================================
 1. usuario criar consulta do cliente
	1.1. define qual area vai realizar = fonoaudiologia, fisicoterapia, massoterapia
	2.2. criar as secoes
		2.2.1. com metodos, exercicio, tarefas,
			2.2.2.1.1 com parametros de que deve se concluidos
			2.2.2.1.2 e objetivo referente ao secao!
			2.2.2.1.3 e o que deve melhorar

==============================================================================================================*/


























/*

CREATE TABLE IF NOT EXISTS tarefaItem (
id INT PRIMARY KEY AUTO_INCREMENT,
id_metodo INT,
nome VARCHAR(255),
ativo BOOLEAN
)
COMMENT ''
;


CREATE TABLE IF NOT EXISTS tarefa (
id INT PRIMARY KEY AUTO_INCREMENT,
id_tarefaItem INT(11),
id_exercico INT(11)
)
COMMENT ''
;








CREATE TABLE IF NOT EXISTS leitura (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255),
descricao VARCHAR(255),
ativa BOOLEAN
)
COMMENT ''
;


CREATE TABLE IF NOT EXISTS adicao (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255),
descricao VARCHAR(255),
ativa BOOLEAN
)
COMMENT ''
;


CREATE TABLE IF NOT EXISTS retricoes (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255),
descricao VARCHAR(255),
ativa BOOLEAN
)
COMMENT ''
;


*/



