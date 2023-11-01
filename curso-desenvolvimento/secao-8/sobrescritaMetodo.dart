// Aula 42 - https://www.udemy.com/course/desenvolvimento-android-e-ios-com-flutter/learn/lecture/13675000#overview

class Animal {
  String cor = "";

  Animal(this.cor);

  void dormir() {
    print("Dormir");
  }

  void correr() {
    print("Correr como um");
  }
}

class Cao extends Animal {
  String corOrelha = "";

  Cao(String cor, this.corOrelha) : super(cor);

  void latir() {
    print("Latir");
  }

  @override
  void correr() {
    super.correr();
    print(" um cao!");
  }
}

class Passaro extends Animal {
  String bico = "";

  Passaro(String cor, this.bico) : super(cor);

  void voar() {
    print("Voar");
  }

  @override
  void correr() {
    super.correr();
    print(" passaro!");
  }
}

void main() {
  Cao cao = new Cao("marrom", "Branca");
  Passaro passaro = new Passaro("marrom", "Branca");

  print("Passaro cor: ${passaro.cor} Cor bico ${passaro.bico}");

  /*
  cao.correr();
  passaro.correr();
  */
}
