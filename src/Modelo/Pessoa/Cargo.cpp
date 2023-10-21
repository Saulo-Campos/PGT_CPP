#include "Cargo.h"

Cargo::Cargo() {
  //ctor
  InitAttributes();
}

Cargo::~Cargo() {
  //dtor
}


void Cargo::setDescricao(std::string descricao) {
  this->descricao = descricao;
}

std::string Cargo::getDescricao() {
  return descricao;
}


void Cargo::setPermissao(std::string permissao) {
  this->permissao = permissao;
}

std::string Cargo::getPermissao() {
  return permissao;
}



Cargo::InitAttributes(){
  descricao = "Cargo sem Descricao";
  permissao = "Cargo Sem Permissao";

}




