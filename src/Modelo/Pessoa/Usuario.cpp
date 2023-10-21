#include "Usuario.h"

Usuario::Usuario() {
  initAttributes();
}


Usuario::~Usuario() {
}




void Usuario::setLogin(std::string login) {
  this->login = login;
}


std::string Usuario::getLogin() {
  return login;
}


void Usuario::setSenha(std::string senha) {
  this->senha = senha;
}


std::string Usuario::getSenha() {
  return senha;
}


void Usuario::setCargo(Cargo cargo) {
  this->cargo = cargo;
}


Cargo Usuario::getCargo() {
  return cargo;
}




void Usuario::initAttributes() {

  login = "Usuario Sem Dados";
  senha = "Usuario Sem Dados";
}




