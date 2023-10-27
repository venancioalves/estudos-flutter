// AULA DE FUNÇÕES - https://www.udemy.com/course/desenvolvimento-android-e-ios-com-flutter/learn/lecture/13674990#overview

//----------------- IMPRIME FRASE -------------------
void exibirMensagem(String nome, int idade) {
  //Códigos para execução
  print("Olá Mundo! Seja bem vindo Sr. $nome, estou aqui para lhe servir!");
  print("Vi que o senhor tem $idade anos!");
  print("");
}

//------------------- USANDO O VOID --------------------
void calcularSalario(double salario, double bonus) {
  var total = (salario - (salario * 0.1)) + bonus;
  print("Seu salário é RS $total reais");
}

//----------------- USANDO RETORNO ---------------------

double calcularSalario1(double salario) {
  var total = (salario - (salario * 0.1));
  return total;
  //print("Seu salário é RS $total raais");
}

//----------------- USANDO OPERADOR -------------------

double calcularSalario2(double salario) => salario - (salario * 0.1);

void main() {
  //----------------- IMPRIME FRASE -------------------
  exibirMensagem("Venancio", 23);

  //------------------- USANDO O VOID --------------------
  double bonus = 200;
  calcularSalario(1200, bonus);

  //----------------- USANDO RETORNO ---------------------
  double bonus1 = 300;
  double resultado = calcularSalario1(1200);
  double total = resultado + bonus1;
  print("Seu salário é RS $total total");

  //----------------- USANDO OPERADOR -------------------
  double bonus2 = 400;
  double resultado1 = calcularSalario2(1200);
  double total1 = resultado1 + bonus2;
  print("Seu salário é RS $total1 total");
}
