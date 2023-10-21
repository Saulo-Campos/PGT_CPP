#include "Base.h"
#include "Conexao.h"
#include <sstream>


/// CONSTRUDORES E  DESCONTRUDORES
Base::Base() {
  //ctor
  InitAttributes();
}

Base::~Base() {
  //dtor
}




/// CONSTRUDOR DE INICIALIZADOR DE DADOS
Base::InitAttributes() {
  nome = "base sem dados";
}




/// GETTER E  SETTER
long Base::getId() {
  return id;
}

void Base::setId(long id) {
  this->id = id;
}

std::string Base::getNome() {
  return nome;
}

void Base::setNome(std::string nome) {
  this->nome = nome;
}


std::string Base::getDataAlteracao() {
  return dataAlteracao;
}

void Base::setDataAlteracao(std::string dataAlteracao) {
  this->dataAlteracao = dataAlteracao;
}

std::string Base::getDataCriacao() {
  return dataCriacao;
}

void Base::setDataCriacao(std::string dataCriacao) {
  this->dataCriacao = dataCriacao;
}

long Base::getIdUsuarioCriacao() {
  return idUsuarioCriacao;
}

void Base::setIdUsuarioCriacao(long idUsuarioCriacao) {
  this->idUsuarioCriacao = idUsuarioCriacao;
}

long Base::getIdUsuarioAlteracao() {
  return idUsuarioAlteracao;
}

void Base::setIdUsuarioAlteracao(long idUsuarioAlteracao) {
  this->idUsuarioAlteracao = idUsuarioAlteracao;
}

bool Base::getAtivo() {
  return ativo;
}

void Base::setAtivo(bool ativo) {
  this->ativo = ativo;
}






























/// DAO DO CONEXAO


bool Base::addBD(Base base) {

  Conexao conexao;
  MYSQL* conn = conexao.getConexao();

  // varias do mysql
  // MYSQL_RES *result;
  // MYSQL_ROW row;
  // MYSQL_FIELD *field;


  std::ostringstream comando;

  comando << "INSERT INTO Base "
          << "(nome, datacriacao, dataAlteracao, idUsuarioCriacao, idUsuarioAlteracao, ativo) "
          << "values "
          << "('teste', 1 ,1 ,1 ,1 ,1)";


  std::cout << "comand: " << mysql_query(conn, comando.str().c_str());
  //std::cout << "comand: " << mysql_query(conn, "INSERT INTO Base(nome,datacriacao,dataAlteracao,idUsuarioCriacao,idUsuarioAlteracao,ativo ) values ('teste', 1 ,1 ,1 ,1 ,1)");
  return true;
}








bool Base::editBD(Base base) {
  Conexao conexao;
  MYSQL* conn = conexao.getConexao();
  int id = mysql_insert_id(conn);


  return true;
}

bool Base::delBD(Base base) {
  Conexao conexao;
  MYSQL* conn = conexao.getConexao();
  return true;
}


Base Base::getById(long id) {
  Base base;

  return base;
}



std::vector<Base> Base::getAllBD() {



  Conexao conexao;
  MYSQL* conn = conexao.getConexao();

  MYSQL_RES *result;
  MYSQL_ROW row;
  MYSQL_FIELD *field;

  std::vector<Base> base;
  int num_fields;


  mysql_free_result(result);
  return base;
}







