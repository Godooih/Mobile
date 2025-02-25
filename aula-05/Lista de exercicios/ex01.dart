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