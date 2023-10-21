#include "Pet.h"


// funcoes acoes

void Pet::nasceu() {
  vivo = true;
}

void Pet::crescer(double _altura) {
  altura += _altura;
}

void Pet::alimentar() {
  saude += 10;
  fome -= 10;
  forca += 10;
  peso  += 10;
  crescer();
  validarDados();

}

void Pet::brincar() {
  saude += 10;
  fome  += 10;
  forca += 10;
  peso  -= 10;
  higiene -= 10;
  humorNivel -= 10;
  validarDados();
}

void Pet::exercitar() {
  saude += 20;
  fome  += 20;
  forca += 20;
  peso  -= 20;
  higiene -= 20;
  humorNivel -= 10;
  validarDados();
}

void Pet::acariciar() {
  saude += 10;
  inteligencia += 10;
  humorNivel += 10;
  validarDados();
}

void Pet::dormir() {
  acordado = false;
  saude += 10;
  inteligencia +=5;
  humorNivel += 10;
  validarDados();
}

void Pet::beber() {
  saude += 10;
  forca += 10;
  humorNivel += 10;
  validarDados();
}

void Pet::banhar() {
  saude += 10;
  higiene += 10;
  humorNivel += 10;
  validarDados();
}

void Pet::estudar() {
  saude += 10;
  inteligencia +10;
  humorNivel += 10;
  validarDados();
}

void Pet::acordar() {
  acordado = true;
  higiene -= 10;
  humorNivel -= 10;
  validarDados();
}


// funcoes de validacao
void Pet::validarDados() {

  if(saude > 100) {
    saude = 100;
  } else if(saude < 0) {
    saude = 0;
  }

  if(fome > 100) {
    fome = 100;
  } else if(fome < 0) {
    fome = 0;
  }

  if(humorNivel > 100) {
    humorNivel = 100;
  } else if(humorNivel < 0) {
    humorNivel = 0;
  }

  if(forca > 100) {
    forca = 100;
  } else if(forca < 0) {
    forca = 0;
  }


  if(higiene > 100) {
    higiene = 100;
  } else if(higiene < 0) {
    higiene = 0;
  }


  if(peso > 100.f) {
    peso = 100.f;
  } else if(peso < 0.001f) {
    peso = 0.001f;
  }

  if(humorNivel  <=  33) {
    humorAtual = "Triste";
  } else if( humorNivel  >= 34  && humorNivel <= 66) {
    humorAtual = "Normal";
  } else {
    humorAtual = "Feliz";
  }


}
