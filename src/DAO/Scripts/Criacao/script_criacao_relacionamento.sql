#======================================================================= RELACOES DE PESSOA ====================================================================================#
-- PESSOA
ALTER TABLE usuario                    ADD CONSTRAINT usuario_id_cargo_cargo_id                         FOREIGN KEY (id_cargo)                 REFERENCES cargo(id);




#======================================================================= RELACOES DE MERCADORIA =================================================================================#

-- MERCADORIA
ALTER TABLE produto                    ADD CONSTRAINT produto_id_medida_medida_id                       FOREIGN KEY (id_medida)                 REFERENCES medida(id);
ALTER TABLE produto                    ADD CONSTRAINT produto_id_categoria_categoria_id                 FOREIGN KEY (id_categoria)              REFERENCES categoria(id);
ALTER TABLE produto                    ADD CONSTRAINT produto_id_grade_grade_id                         FOREIGN KEY (id_grade)                  REFERENCES grade(id);

-- ARMAGENAGEM
ALTER TABLE produto                    ADD CONSTRAINT produto_id_estoque_estoque_id                     FOREIGN KEY (id_estoque)                REFERENCES estoque(id);





#======================================================================= RELACOES DE ARMAGENAGEM ================================================================================#
-- ARMAGENAGEM
ALTER TABLE estoquemovimentacao        ADD CONSTRAINT estoquemovimentacao_id_estoque_estoque_id         FOREIGN KEY (id_estoque)                REFERENCES estoque(id);

-- MERCADORIA
ALTER TABLE estoquemovimentacao        ADD CONSTRAINT estoquemovimentacao_id_produto_produto_id         FOREIGN KEY (id_produto)                REFERENCES produto(id);





#======================================================================= RELACOES DE ENTRADA E SAIDA ============================================================================#
-- ENTRADA E SAIDA
ALTER TABLE VendaItem                   ADD CONSTRAINT VendaItem_id_venda_venda_id                       FOREIGN KEY (id_venda)                  REFERENCES venda(id);
ALTER TABLE pedidoItem                  ADD CONSTRAINT pedidoItem_id_pedido_pedido_id                    FOREIGN KEY (id_pedido)                 REFERENCES pedido(id);

-- PESSOAS
ALTER TABLE venda                       ADD CONSTRAINT venda_id_usuario_usuario_id                       FOREIGN KEY (id_usuario)                REFERENCES usuario(id);
ALTER TABLE venda                       ADD CONSTRAINT venda_id_cliente_cliente_id                       FOREIGN KEY (id_cliente)                REFERENCES cliente(id);
ALTER TABLE pedido                      ADD CONSTRAINT pedido_id_usuario_usuario_id                      FOREIGN KEY (id_usuario)                REFERENCES usuario(id);
ALTER TABLE pedido                      ADD CONSTRAINT pedido_id_cliente_cliente_id                      FOREIGN KEY (id_cliente)                REFERENCES cliente(id);

-- FINANCEIRO
ALTER TABLE venda                       ADD CONSTRAINT venda_id_forma_pagamento_forma_de_pagamento_id    FOREIGN KEY (id_forma_pagamento)        REFERENCES forma_de_pagamento(id);

-- MERCADORIA
ALTER TABLE pedidoItem                  ADD CONSTRAINT pedidoItem_id_produto_produto_id                  FOREIGN KEY (id_produto)                REFERENCES produto(id);
ALTER TABLE VendaItem                   ADD CONSTRAINT VendaItem_id_produto_produto_id                   FOREIGN KEY (id_produto)                REFERENCES produto(id);






#======================================================================= RELACOES DE SAUDE =====================================================================================#
-- SAUDE
ALTER TABLE secao                       ADD CONSTRAINT secao_id_consulta_consulta_id                     FOREIGN KEY (id_consulta)               REFERENCES consulta(id);
ALTER TABLE secao                       ADD CONSTRAINT secao_area_secao_area_id                          FOREIGN KEY (area_secao)                REFERENCES area(id);
#-- ALTER TABLE tarefaitem                  ADD CONSTRAINT tarefaitem_id_metodo_metodo_id                    FOREIGN KEY (id_metodo)                 REFERENCES metodo(id);
ALTER TABLE exercicio                   ADD CONSTRAINT exercicio_id_secao_secao_id                       FOREIGN KEY (id_secao)                  REFERENCES secao(id);
ALTER TABLE consulta                    ADD CONSTRAINT consulta_id_area_area_id                          FOREIGN KEY (id_area)                   REFERENCES area(id);
#-- ALTER TABLE tarefa                      ADD CONSTRAINT tarefa_id_tarefa_tarefa_id                        FOREIGN KEY (id_tarefa)                 REFERENCES tarefa(id);
#-- ALTER TABLE tarefa                      ADD CONSTRAINT tarefa_id_exercico_exercicio_id                   FOREIGN KEY (id_exercico)               REFERENCES exercicio(id);
ALTER TABLE metodo                      ADD CONSTRAINT metodo_id_secao_secao_id                          FOREIGN KEY (id_secao)                  REFERENCES secao(id);


-- PESSOAS
ALTER TABLE consulta                    ADD CONSTRAINT consulta_id_paciente_paciente_id                  FOREIGN KEY (id_paciente)               REFERENCES paciente(id);
ALTER TABLE consulta                    ADD CONSTRAINT consulta_id_usuario_usuario_id                    FOREIGN KEY (id_usuario)                REFERENCES usuario(id);






#======================================================================= RELACOES DE OUTRO =====================================================================================#




# FIM DO ARQUIVO