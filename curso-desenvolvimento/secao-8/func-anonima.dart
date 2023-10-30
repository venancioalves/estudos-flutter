//FUNÇÕES ANONIMAS E PARÂMETROS OPCIONAIS - https://www.udemy.com/course/desenvolvimento-android-e-ios-com-flutter/learn/lecture/13674992#questions/18191072

//PARAMETROS OPCIONAIS SEMPRE NO FINAL

//-------- CASO 1 ------------
// CRIANDO PARAMETROS OPCIONAIS: ABRE COLCHETES E APÓS O TITPO
// DA VARIAVEL COLOCAR UMA INTERROGAÇÃO.
// PARA USAR O PARAMETRO OPCIONAL DEVE INFORMA A VARIAVEL
// NA CHAMADA DA FUNÇÃO. EX.: exibirDados('Venâncio', idade: 23, altura:1.85);

void exibirDados(String nome, {int? idade, double? altura}) {
  print("Nome: $nome");
  print("idade: $idade");
  print("altura: $altura");
}

//----------------------------------------------------

//-------- CASO 2 ------------
// USANDO VALORES DEFALT QUANDO UM PARAMETRO E OPCIONAL
// CRIA A VARIAVEL var novaAltura = altura ?? 0;

void exibirDados1(String nome, {int? idade, double? altura}) {
  var novaAltura1 = altura ?? 0;
  print("Nome: $nome");
  print("idade: $idade");
  print("altura: $novaAltura1");
}

//----------------------------------------------------
//-------- CASO 2 ------------
// COMO CHAMAR UMA FUNÇÃO DENTRO DE OUTRA
void calcularBonus() {
  print("Seu bônus é de: 20");
}

void calcularSalario(double salario, Function funcaoParametro) {
  print("Seu salário é: $salario");
  funcaoParametro();
}

void main() {
  //-------- CASO 1 ------------
  exibirDados('Venâncio', idade: 23, altura: 1.85);

  print('--------------------------------');

  //-------- CASO 2 ------------
  exibirDados1('Venâncio', idade: 23);

  print('--------------------------------');

  //-------- CASO 3 ------------
  calcularSalario(100, calcularBonus);

  calcularSalario(280, () {
    print("Seu bônus é de: 80");
  });
}
