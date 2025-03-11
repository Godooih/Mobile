abstract class MaquinaIndustrial {
  String nome;
  double potencia;
  bool status;

  MaquinaIndustrial(this.nome, this.potencia, this.status);

  void ligar(); // Método abstrato
  void desligar(); // Método abstrato
}

class MaquinaEmbalagem extends MaquinaIndustrial {
  MaquinaEmbalagem(String nome, double potencia) : super(nome, potencia, false);

  @override
  void ligar() {
    if (!status) {
      status = true;
      print('$nome ligada com potência de $potencia kW.');
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

void main() {
  var maquina = MaquinaEmbalagem('Máquina de Embalagem', 5.5);
  maquina.ligar();   // Saída: Máquina de Embalagem ligada com potência de 5.5 kW.
  maquina.desligar(); // Saída: Máquina de Embalagem desligada.
}
