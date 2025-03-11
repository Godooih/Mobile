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
    print('$nome está ligado.');
  }

  @override
  void desligarCarro() {
    print('$nome está desligado.');
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
  var carro = Carro('Toyota Corolla', 'Prata', 2023);
  carro.mostrarDetalhes(); 
  carro.colocarCinto();   // Saída: Cinto colocado no Toyota Corolla.
  carro.ligarCarro();     // Saída: Toyota Corolla está ligado.
  carro.dirigir();        // Saída: Toyota Corolla está em movimento.
  carro.desligarCarro();  // Saída: Toyota Corolla está desligado.
}
