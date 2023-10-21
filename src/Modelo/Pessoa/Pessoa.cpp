#include "Pessoa.h"

using std::string;

Pessoa::Pessoa()
{
  initAttributes();
}

Pessoa::~Pessoa()
{
}




void Pessoa::setNomeCompleto(string nomeCompleto)
{
  this->nomeCompleto = nomeCompleto;
}


string Pessoa::getNomeCompleto()
{
  return nomeCompleto;
}


void Pessoa::setCpfcnpj(string cpfcnpj)
{
  this->cpfcnpj = cpfcnpj;
}



string Pessoa::getCpfcnpj()
{
  return cpfcnpj;
}


void Pessoa::setRg(string rg)
{
  this->rg = rg;
}


string Pessoa::getRg()
{
  return rg;
}


void Pessoa::setEndereco(string endereco)
{
  this->endereco = endereco;
}


string Pessoa::getEndereco()
{
  return endereco;
}


void Pessoa::setNumEndereco(string numEndereco)
{
  this->numEndereco = numEndereco;
}


string Pessoa::getNumEndereco()
{
  return numEndereco;
}


void Pessoa::setBairro(string bairro)
{
  this->bairro = bairro;
}


string Pessoa::getBairro()
{
  return bairro;
}


void Pessoa::setContato(string contato)
{
  this->contato = contato;
}


string Pessoa::getContato()
{
  return contato;
}



void Pessoa::setEmail(string email)
{
  this->email = email;
}


string Pessoa::getEmail()
{
  return email;
}


void Pessoa::setObs(string obs)
{
  this->obs = obs;
}


string Pessoa::getObs()
{
  return obs;
}





Pessoa::initAttributes()
{
  setNome("Pessoa Sem Nome");
  nomeCompleto = "Pessoa Sem Nome Completo";
  cpfcnpj = "Pessoa Sem CPF ou CNPF";
  rg = "Pessoa Sem RG";
  endereco = "Pessoa Sem Endereco";
  numEndereco = "Pessoa Sem Numero De Endereco";
  bairro = "Pessoa Sem Bairro";
  contato = "Pessoa Sem Contato";
  email = "Pessoa Sem Email";
  obs = "Pessoa Sem Observacao";
}

