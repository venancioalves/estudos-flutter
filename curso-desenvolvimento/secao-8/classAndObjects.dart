/*

//Comparando a uma casa, define o que vai ter, mas so na chamada 
//no main e que vai utilizar.

class Casa {
  //Atributos definem caracteristicas dessa classe casa
  String cor = ""; 
  
  //Metodos definem o que a classe pode fazer
  void abrirJanela(int qtdJanelas){
    print("abrir janela da casa $cor");
    print("Qtd. Janelas: $qtdJanelas");
  }
  
  void abrirPorta (){
    print("Abrir porta da casa $cor");
  }
  
  void abrirCasa(){
    this.abrirJanela(5);
    this.abrirPorta();
  }
}

class Usuario {
  String usuario;
  String senha;
}


void main() {
  
  Usuario usuario = new Usuario();
  
  usuario.usuario = "venancio.alves";
  usuario.senha   = "123456";
  
  
 
  String nome = "Venâncio";
  
  //No dart o "new"e opcional
  Casa minhaCasa = new Casa();
  minhaCasa.cor = "Verde";  
  minhaCasa.abrirJanela(1);
  
  Casa minhaCasa2 = new Casa();
  minhaCasa2.cor = "Vermelha";
  minhaCasa2.abrirJanela(10);
  
  minhaCasa.abrirCasa();
  
  
  //print( minhaCasa.cor);
   
}
*/

class Usuario {
  String usuario = "";
  String senha = "";

  void autenticador() {
    //Recuperar de um banco de dados
    var usuario = "venancio.alves";
    var senha = "123456";

    if (this.usuario == usuario && this.senha == senha) {
      print("Usuario Autenticado");
    } else {
      print("Usuario Não Autenticado");
    }
  }
}

void main() {
  Usuario usuario = new Usuario();

  usuario.usuario = "venancio.alves";
  usuario.senha = "123456";

  usuario.autenticador();
}
