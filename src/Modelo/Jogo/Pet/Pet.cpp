#include "Pet.h"

Pet::Pet() {
  InitAttribute();
  //ctor
}

Pet::~Pet() {
  //dtor
}

Pet::InitAttribute() {
  setId(0);
  vivo = 1;
  setNome("Pet sem Nome");
  saude = 50;
  fome = 50;
  idade = 0;
  peso = 0.1;
  altura = 0.01;
  forca = 1;
  higiene = 50;
  inteligencia = 1;
  humorNivel = 50;
  humorAtual = "Normal";
  acordado = true;
}



// funcoes Setter e getter

void Pet::setVivo(bool vivo) {
  this->vivo = vivo;
}

bool Pet::isVivo() {
  return vivo;
}


void Pet::setSaude(int saude) {
  this->saude = saude;
}

int Pet::getSaude() {
  return saude;
}


void Pet::setFome(int fome) {
  this->fome = fome;
}

int Pet::getFome() {
  return fome;
}


void Pet::setIdade(int idade) {
  this->idade = idade;
}

int Pet::getIdade() {
  return idade;
}


void Pet::setPeso(double peso) {
  this->peso = peso;
}

double Pet::getPeso() {
  return peso;
}


void Pet::setAltura(double altura) {
  this->altura = altura;
}

double Pet::getAltura() {
  return altura;
}


void Pet::setForca(int forca) {
  this->forca = forca;
}

int Pet::getForca() {
  return forca;
}


void Pet::setHigiene(int higiene) {
  this->higiene = higiene;
}

int Pet::getHigiene() {
  return higiene;
}


void Pet::setInteligencia(int inteligencia) {
  this->inteligencia = inteligencia;
}

int Pet::getInteligencia() {
  return inteligencia;
}


void Pet::setHumorNivel(int humorNivel) {
  this->humorNivel = humorNivel;
}

int Pet::getHumorNivel() {
  return humorNivel;
}


void Pet::setHumorAtual(std::string humorAtual) {
  this->humorAtual = humorAtual;
}

std::string Pet::getHumorAtual() {
  return humorAtual;
}


void Pet::setAcordado(bool acordado) {
  this->acordado = acordado;
}

bool Pet::isAcordado() {
  return acordado;
}
















