abstract class Automoveis {
  String nome;
  String cor;
  int ano;

  Automoveis(this.nome, this.cor, this.ano);
}

class Carro extends Automoveis {
  Carro(String nome, String cor, int ano) : super(nome, cor, ano);

  void mostrarDetalhes() {
    print('Nome: $nome');
    print('Cor: $cor');
    print('Ano: $ano');
  }
}

void main() {
  var carro = Carro('Honda Civic', 'Preto', 2022);
  carro.mostrarDetalhes(); 
  // Saída:
  // Nome: Honda Civic
  // Cor: Preto
  // Ano: 2022
}
