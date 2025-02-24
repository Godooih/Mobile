//Exemplo 1

//Criar classe chamada Casa
class Casa{
  String? cor; //
  int? qtde_p;//

  //Cria o metodo chamado abrirporta()
  void AbrirPorta(){
    print("A porta está aberta");
  }
}

void main(){
  //Instancia o objeto chamado minhaCasa
  Casa minhaCasa = Casa();
  minhaCasa.cor="Azul";
  minhaCasa.qtde_p=2;
  minhaCasa.AbrirPorta();
  print("Cor da casa: ${minhaCasa.cor}");
  print("A casa tem ${minhaCasa.qtde_p} portas")
  }
