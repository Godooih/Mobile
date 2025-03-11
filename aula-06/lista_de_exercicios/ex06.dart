abstract class Automoveis {
  String nome;
  String cor;
  int ano;

  Automoveis(this.nome, this.cor, this.ano);

  void colocarCinto(); // Método abstrato
  void ligarCarro(); // Método abstrato
  void desligarCarro(); // Método abstrato
  void dirigir(); // Método abstrato
}

class Carro extends Automoveis {
  Carro(String nome, String cor, int ano) : super(nome, cor, ano);

  @override
  void colocarCinto() {
    print('Cinto colocado no $nome.');
  }

  @override
  void ligarCarro() {
    print('$nome ligado.');
  }

  @override
  void desligarCarro() {
    print('$nome desligado.');
  }

  @override
  void dirigir() {
    print('$nome está em movimento.');
  }

  void mostrarDetalhes() {
    print('Nome: $nome');
    print('Cor: $cor');
    print('Ano: $ano');
  }
}

void main() {
  var carro = Carro('Honda Civic', 'Preto', 2022);
  carro.mostrarDetalhes(); 
  carro.colocarCinto();   // Saída: Cinto colocado no Honda Civic.
  carro.ligarCarro();     // Saída: Honda Civic ligado.
  carro.dirigir();        // Saída: 
}