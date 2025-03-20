import 'dart:io';

void main() {
  // Solicita quatro valores ao usuário
  List<double> valores = [];
  for (int i = 1; i <= 4; i++) {
    stdout.write("Digite o valor $i: ");
    valores.add(double.tryParse(stdin.readLineSync()!) ?? 0);
  }

  // Solicita a operação desejada
  stdout.write("Escolha a operação (+, -, *, /): ");
  String operacao = stdin.readLineSync()!;

  // Verifica se a operação é válida
  if (!['+', '-', '*', '/'].contains(operacao)) {
    print("Operação inválida!");
    return;
  }

  // Realiza a operação escolhida
  double resultado = valores[0];
  for (int i = 1; i < valores.length; i++) {
    if (operacao == '/' && valores[i] == 0) {
      print("Erro: Divisão por zero.");
      return;
    }

    switch (operacao) {
      case '+':
        resultado += valores[i];
        break;
      case '-':
        resultado -= valores[i];
        break;
      case '*':
        resultado *= valores[i];
        break;
      case '/':
        resultado /= valores[i];
        break;
    }
  }

  // Exibe o resultado formatado
  print("Resultado: ${resultado.toStringAsFixed(2)}");
}
