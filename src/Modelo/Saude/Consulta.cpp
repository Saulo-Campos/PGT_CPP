#include "Consulta.h"
using std::string;

Consulta::Consulta() {
  //ctor
}

Consulta::~Consulta() {
  //dtor
}


string Consulta::getDescricao() {
  return descricao;
}

void Consulta::setDescricao(string descricao) {
  this->descricao = descricao;
}

long Consulta::getIdPaciente() {
  return idPaciente;
}

void Consulta::setIdPaciente(long idPaciente) {
  this->idPaciente = idPaciente;
}

long Consulta::getIdUsuario() {
  return idUsuario;
}

void Consulta::setIdUsuario(long idUsuario) {
  this->idUsuario = idUsuario;
}

long Consulta::getIdArea() {
  return idArea;
}

void Consulta::setIdArea(long idArea) {
  this->idArea = idArea;
}

string Consulta::getDataAbertura() {
  return dataAbertura;
}

void Consulta::setDataAbertura(string dataAbertura) {
  this->dataAbertura = dataAbertura;
}

string Consulta::getDataFechamento() {
  return dataFechamento;
}

void Consulta::setDataFechamento(string dataFechamento) {
  this->dataFechamento = dataFechamento;
}
