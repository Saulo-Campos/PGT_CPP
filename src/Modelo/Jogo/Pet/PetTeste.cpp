#include "Pet.h"
using std::string;




// funcoes de teste
void Pet::mostrarStatus() {
  system("cls");
  std::cout << "---------------- Dados do PET ---------------------\n" << '\n';
  std::cout << "Pet Vivo:............. " << isVivo() << '\n';
  std::cout << "Pet Nome:............. " << getNome() << '\n';
  std::cout << "Pet Saude:............ " << getSaude() << '\n';
  std::cout << "Pet Fome:............. " << getFome() << '\n';
  std::cout << "Pet Idade:............ " << getIdade() << '\n';
  std::cout << "Pet Peso:............. " << getPeso() << '\n';
  std::cout << "Pet Altura:........... " << getAltura() << '\n';
  std::cout << "Pet Forca:............ " << getForca() << '\n';
  std::cout << "Pet Higiene:.......... " << getHigiene() << '\n';
  std::cout << "Pet Inteligencia:..... " << getInteligencia() << '\n';
  std::cout << "Pet Humor Nivel:...... " << getHumorNivel() << '\n';
  std::cout << "Pet Humor Atual:...... " << getHumorAtual() << '\n';
  std::cout << "Pet Acordado:......... " << isAcordado() << '\n';
}


string Pet::toString() {
  return this->getNome() + "oi";
}


void Pet::menuTeste(bool testa) {

  mostrarStatus();
  int opcao = 0;

  while(testa) {
    std::cout << "\n-----------------  OPCAOS -----------------------\n" << '\n';
    std::cout << "1. Alimentar " << '\n';
    std::cout << "2. Acariciar " << '\n';
    std::cout << "3. Brincar " << '\n';
    std::cout << "4. Estudar " << '\n';
    std::cout << "5. Banhar " << '\n';
    std::cout << "6. Dormir " << '\n';
    std::cout << "7. Beber " << '\n';
    std::cout << "8. Exercitar " << '\n';
    std::cout << "9. Acordar " << '\n';
    std::cout << "0. Sair " << '\n';
    std::cout << "Selecioner: " << '\n';
    std::cin >> opcao;

    if(!petAcoes(opcao)){
        break;
        //finalizar o programa se o usuario informar 0(zero)
    }
    system("cls");
    mostrarStatus();
  }
}


int  Pet::petAcoes(int opcao) {




  switch(opcao) {
  case 0:
    break;

  case 1:
    alimentar();
    break;

  case 2:
    acariciar();
    break;

  case 3:
    brincar();
    break;

  case 4:
    estudar();
    break;

  case 5:
    banhar();
    break;

  case 6:
    dormir();
    break;

  case 7:
    beber();
    break;

  case 8:
    exercitar();
    break;

  case 9:
    acordar();
    break;


  }
  return opcao;
}




void Pet::mostraStatusDiferencia() {

  static bool vivo_anterior;
  static int saude_anterior;
  static int fome_anterior;
  static int idade_anterior;
  static double peso_anterior;
  static int forca_anterior;
  static int inteligencia_anterior;
  static int higiene_anterior;
  static int humorNivel_anterior;
  static string humorAtual_anterior;
  static string faixaEtaria_anterior;

}
