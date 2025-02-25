class Maquinas {
  String nomeMaquina;
  int quantidadeEixos;
  int rotacoesPorMinuto;
  double consumoEnergia;

  Maquinas(this.nomeMaquina, this.quantidadeEixos, this.rotacoesPorMinuto, this.consumoEnergia);

  void ligar() {
    print("$nomeMaquina está ligada.");
  }

  void desligar() {
    print("$nomeMaquina está desligada.");
  }

  void ajustarVelocidade(int novaRotacao) {
    rotacoesPorMinuto = novaRotacao;
    print("Velocidade ajustada para $rotacoesPorMinuto RPM.");
  }
}

class Furadeira extends Maquinas {
  Furadeira(String nomeMaquina, int rotacoesPorMinuto, double consumoEnergia)
      : super(nomeMaquina, 0, rotacoesPorMinuto, consumoEnergia);
}