class Pessoa {
  String _nome = '';
  int _idade = 0;

  // Getter para o nome
  String get nome => _nome;

  // Setter para o nome com validação
  set nome(String valor) {
    if (valor.isNotEmpty) {
      _nome = valor;
    } else {
      print('Nome inválido.');
    }
  }

  // Getter para a idade
  int get idade => _idade;

  // Setter para a idade com validação
  set idade(int valor) {
    if (valor > 0) {
      _idade = valor;
    } else {
      print('Idade inválida.');
    }
  }

  // Método para exibir as informações da pessoa
  void mostrarInformacoes() {
    print('Nome: $_nome');
    print('Idade: $_idade anos');
  }
}

void main() {
  var pessoa = Pessoa();
  pessoa.nome = 'João';
  pessoa.idade = 25;

  pessoa.mostrarInformacoes(); 
  // Saída:
  // Nome: João
  // Idade: 25 anos

  pessoa.nome = ''; // Saída: Nome inválido.
  pessoa.idade = -5; // Saída: Idade inválida.
}
