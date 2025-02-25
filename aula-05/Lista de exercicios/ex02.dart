class Animal {
  String nome;
  int idade;
  String cor;
  String raca;

  Animal(this.nome, this.idade, this.cor, this.raca);

  void exibirInfo() {
    print("Nome: $nome");
    print("Idade: $idade anos");
    print("Cor: $cor");
    print("Raça: $raca");
  }
}

class Filha extends Animal {
  double peso;
  String tipo;

  Filha(String nome, int idade, String cor, String raca, this.peso, this.tipo) : super(nome, idade, cor, raca);

  void acordou() {
    print("$nome acordou!");
  }

  void dormiu() {
    print("$nome dormiu!");
  }
}