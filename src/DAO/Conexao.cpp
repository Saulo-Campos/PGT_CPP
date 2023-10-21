#include "Conexao.h"
#include <windows.h>
#include <stdio.h>


Conexao::Conexao() {
  //ctor
}

Conexao::~Conexao() {
  //dtor
}






MYSQL* Conexao::getConexao() {
  //criar conexão
  MYSQL* connect;
  connect = mysql_init(NULL);

  if(!connect) {
    MessageBox(NULL, "mysql não inicializou corretamente", "messsagem", 0);
    return NULL;
  }

  connect = mysql_real_connect(connect, hostname, username, password, schemas, 0, NULL , 20);

  if(connect) {
    std::cout << "ok\n" ;
    MessageBox(NULL, "sucesso ao conectar", "messsagem", 0);
  } else {
    fprintf(stderr, "Erro na consulta: %s\n", mysql_error(connect));
    MessageBox(NULL, "ERRO!", "messsagem", 0);

  }


  printf("MySQL client version: %s\n", mysql_get_client_info());
  return connect;
}


void Conexao::finish_with_error(MYSQL *connect) {
  fprintf(stderr, "%s\n", mysql_error(connect));
  mysql_close(connect);
  exit(1);
}
