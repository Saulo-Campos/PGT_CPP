#include <iostream>
#include <string>

using std::string;
using std::cout;


struct Jogo {
  string nome;
  float preco;
  int horas;
  float custo;
};


Jogo adquirir(const string& titulo, float valor);
void atualizar(Jogo& jogo, float valor);
void jogar(Jogo& jogo, int tempo);
void exibir(const Jogo& jogo);


Jogo adquirir(const string& titulo, float valor) {
  Jogo jogo;
  jogo.nome = titulo;
  jogo.preco = valor;
  jogo.horas = 0;
  jogo.custo = valor;

  return jogo;
}

void atualizar(Jogo& jogo, float valor) {
  jogo.preco = valor;

  if(jogo.horas > 0) {
    jogo.custo = jogo.preco/jogo.horas;
  }else{
    jogo.custo = valor;
  }

}

void jogar(Jogo& jogo, int tempo) {
  jogo.horas += tempo;

  if(jogo.horas > 0) {
    jogo.custo = jogo.preco/jogo.horas;
  }

}

void exibir(const Jogo& jogo) {
  cout << "Nome  " << jogo.nome  << "\n"
       << "Preco " << jogo.preco << "\n"
       << "horas " << jogo.horas << "\n"
       << "custo " << jogo.custo << "\n\n";
}



