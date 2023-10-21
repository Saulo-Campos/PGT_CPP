#include "Secao.h"



Secao::Secao() {
  //ctor
}

Secao::~Secao() {
  //dtor
}


long Secao::getIdConsulta() {
  return idConsulta;
}

void Secao::setIdConsulta(long idConsulta) {
  this->idConsulta = idConsulta;
}

std::string Secao::getDescricao() {
  return descricao;
}

void Secao::setDescricao(std::string descricao) {
  this->descricao = descricao;
}

std::string Secao::getResultado() {
  return resultado;
}

void Secao::setResultado(std::string resultado) {
  this->resultado = resultado;
}

float Secao::getAvaliacao() {
  return avaliacao;
}

void Secao::setAvaliacao(float avaliacao) {
  this->avaliacao = avaliacao;
}
