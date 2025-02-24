//Exemplo 1

//Criar classe chamada Casa
class Casa{
  String? cor; // ? faz parte do null safety do dart que é para garantir que a variavel possa inicializar sem valores
  int? qtde_p;//

  //Cria o metodo chamado abrirporta()
  void AbrirPorta(){
    print("A porta está aberta");
  }
}

void main(){
  //Instancia o objeto chamado minhaCasa
  Casa minhaCasa = Casa();//cria um objeto dentro da classe "CASA"
  minhaCasa.cor="Azul"; //Define que a cor do objeto "Minha casa" é azul
  minhaCasa.qtde_p=2;
  minhaCasa.AbrirPorta();
  print("Cor da casa: ${minhaCasa.cor}");
  print("A casa tem ${minhaCasa.qtde_p} portas");
  }
