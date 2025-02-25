class Pessoa{
  String? _nome;

  String? SetNome(String nome){
    _nome = nome;
  }

  String? GetNome(){
    return _nome;
  }
}

void main(){
  Pessoa cliente = Pessoa();;
  cliente._nome="Thales";
  print("O nome do cliente é: ${cliente.GetNome()}");
}