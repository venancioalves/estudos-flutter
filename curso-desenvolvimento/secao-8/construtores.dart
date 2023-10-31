class Usuario {
  String usuario = "";
  String senha = "";
  String cargo = "";

  //Construtor-> Prepara o objeto para as ações que ele
  //precisa

  // 1 modo de uso ->

  /* 
  Usuario(String usuario, String senha){
    this.usuario = usuario;
    this.senha = senha;
    print("Configurações iniciais do objeto");
  }
  */

  // 2 modo de uso ->
  // Usuario(this.usuario, this.senha);

  // 3 modo de uso -> Named constructor
  Usuario.diretor(this.usuario, this.senha) {
    this.cargo = "diretor";
    print("Libera Previlegios para o " + this.cargo);
  }

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
  // Para ser usado no constructor 1 e 2
  //Usuario usuario = new Usuario("venancio.alves", "123456");
  //usuario.autenticador();

  // Para ser usado no constructor 3
  Usuario usuarioDiretor = new Usuario.diretor("venancio.alves", "123456");

  // Para usar sem construtor
  //usuario.usuario = "venancio.alves";
  //usuario.senha   = "123456";
}
