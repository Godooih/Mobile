

class Carro{
  String marca = "Nissan";
  int ano =2025;
  //Cria um metodo para abrir a porta do carro
  void AbrirPorta(int nqtde){
    if(nqtde==1){
      print("A porta do motorista está aberta");
    }
    if(nqtde==2){
      print("Porta do motorista e do passageiro está aberta");
    }
    if(nqtde==3){
      print("Porta do motorista,passageiro e traseiro da direita está aberta");
    }
    if(nqtde==4){
      print("As 4 portas do veiculo está aberta");
    }
  }

  void FecharPorta(int nqtde){
    if(nqtde==1){
      print("A porta do motorista está fechada");
    }
    if(nqtde==2){
      print("Porta do motorista e do passageiro está fechada");
    }
    if(nqtde==3){
      print("Porta do motorista,passageiro e traseiro da direita está fechada");
    }
    if(nqtde==4){
      print("As 4 portas do veiculo está fechada");
    }
  }

  void Liga(){
    print("Carro ligado!");
  }
  void Desliga(){
    print("Carro desligado!");
  }
}

void main(){
  //Instancia o objeto Carro
  Carro Etios = Carro();

  Etios.ano=2013;
  Etios.marca="Toyota";
  Etios.Liga();
  Etios.AbrirPorta(2);
  print("Exibe informações do carro");
  print("O carro é da marca: ${Etios.marca}");
  print("O carro é de: ${Etios.ano}");
}