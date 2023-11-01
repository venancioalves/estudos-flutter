// Aula 42 - https://www.udemy.com/course/desenvolvimento-android-e-ios-com-flutter/learn/lecture/13675000#overview

class Animal {
  String cor = "";
  void dormir() {
    print("Dormir");
  }
}

class Cao extends Animal {
  String corOrelha = "";
  void latir() {
    print("Latir");
  }
}

class Passaro extends Animal {
  String bico = "";
  void voar() {
    print("Voar");
  }
}

void main() {
  Cao cao = new Cao();
  Passaro passaro = new Passaro();

  cao.cor = "Branco";
  cao.corOrelha = "Verde";
  print("Cor do cão: " + cao.cor);
  print("Cor da orelha: " + cao.corOrelha);
  cao.latir();

  passaro.cor = "Preto";
  print(passaro.cor);
  passaro.voar();
}
