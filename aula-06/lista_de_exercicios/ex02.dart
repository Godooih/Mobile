abstract class MaquinaIndustrial {
  String nome;
  double potencia;
  bool status;

  MaquinaIndustrial(this.nome, this.potencia, this.status);

  void ligar(); // Método abstrato
  void desligar(); // Método abstrato
}

class Prensa extends MaquinaIndustrial {
  double pressao; // Em toneladas

  Prensa(String nome, double potencia, this.pressao) : super(nome, potencia, false);

  @override
  void ligar() {
    if (!status) {
      status = true;
      print('$nome ligada com potência de $potencia kW e pressão de $pressao toneladas.');
    } else {
      print('$nome já está ligada.');
    }
  }

  @override
  void desligar() {
    if (status) {
      status = false;
      print('$nome desligada.');
    } else {
      print('$nome já está desligada.');
    }
  }
}

class RoboSolda extends MaquinaIndustrial {
  String tipoDeSolda;

  RoboSolda(String nome, double potencia, this.tipoDeSolda) : super(nome, potencia, false);

  @override
  void ligar() {
    if (!status) {
      status = true;
      print('$nome ligado com potência de $potencia kW realizando solda de tipo $tipoDeSolda.');
    } else {
      print('$nome já está ligado.');
    }
  }

  @override
  void desligar() {
    if (status) {
      status = false;
      print('$nome desligado.');
    } else {
      print('$nome já está desligado.');
    }
  }
}

void main() {
  var prensa = Prensa('Prensa Hidráulica', 10.0, 50);
  prensa.ligar();   // Saída: Prensa Hidráulica ligada com potência de 10.0 kW e pressão de 50 toneladas.
  prensa.desligar(); // Saída: Prensa Hidráulica desligada.

  var roboSolda = RoboSolda('Robô de Solda', 7.5, 'MIG');
  roboSolda.ligar();   // Saída: Robô de Solda ligado com potência de 7.5 kW realizando solda de tipo MIG.
  roboSolda.desligar(); // Saída: Robô de Solda desligado.
}
