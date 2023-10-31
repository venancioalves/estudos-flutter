class Conta {
  double saldo = 0;
  // Quando usar o "_" antes da variavel e por que não podera ser acessada
  // diretamente, vai ter um GETTER para pegar o valor.
  double _saque = 0;

  //Getter -> Obter
  double get saque {
    //Pode fazer validações
    return this._saque;
  }

  //Setter
  set saque(double saque) {
    if (saque > 0 && saque <= 500) {
      this._saque = saque;
    }
  }
}

void main() {
  Conta conta = Conta();
  conta.saque = 900;

  print(conta.saque);
}
