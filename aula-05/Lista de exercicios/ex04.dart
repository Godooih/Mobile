class Produtos {
  String nome;
  int quantidade;
  double preco;
  String tipoComunicacao;
  double consumoEnergia;
  bool ligado = false;

  Produtos(this.nome, this.quantidade, this.preco, this.tipoComunicacao, this.consumoEnergia);

  void ligar() {
    if (!ligado) {
      ligado = true;
      print('$nome ligado.');
    } else {
      print('$nome já está ligado.');
    }
  }

  void desligar() {
    if (ligado) {
      ligado = false;
      print('$nome desligado.');
    } else {
      print('$nome já está desligado.');
    }
  }
}

class Fritadeira extends Produtos {
  Fritadeira(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  void ajustarTemperatura(int setpoint) {
    print('Temperatura da $nome ajustada para $setpoint°C.');
  }
}

class Televisao extends Produtos {
  Televisao(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  void ajustarTemperatura(int setpoint) {
    print('Televisores não possuem ajuste de temperatura.');
  }
}

class ArCondicionado extends Produtos {
  ArCondicionado(String nome, int quantidade, double preco, String tipoComunicacao, double consumoEnergia)
      : super(nome, quantidade, preco, tipoComunicacao, consumoEnergia);

  void ajustarTemperatura(int setpoint) {
    print('Temperatura do $nome ajustada para $setpoint°C.');
  }
}

void main() {
  var af = Fritadeira('Fritadeira Air Fryer', 10, 350.0, 'Wi-Fi', 1.5);
  af.ligar();
  af.ajustarTemperatura(180);
  af.desligar();

  var ac = ArCondicionado('Ar-Condicionado Split', 5, 2200.0, 'Controle Remoto', 3.0);
  ac.ligar();
  ac.ajustarTemperatura(22);
  ac.desligar();

  var tv = Televisao('Smart TV', 7, 2800.0, 'Bluetooth', 1.2);
  tv.ligar();
  tv.ajustarTemperatura(25);
  tv.desligar();
}