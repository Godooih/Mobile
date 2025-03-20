import 'dart:io';

void main() {
  // Definição dos preços de energia elétrica
  Map<String, Map<String, dynamic>> dadosEnergia = {
    'R': {'limite': 500, 'precoMenor': 0.50, 'precoMaior': 0.70},
    'C': {'limite': 1000, 'precoMenor': 0.65, 'precoMaior': 0.60},
    'I': {'limite': 5000, 'precoMenor': 0.55, 'precoMaior': 0.50}
  };

  // Solicita informações ao usuário
  stdout.write("Digite a quantidade de kWh consumida: ");
  double consumo = double.parse(stdin.readLineSync()!);
  
  stdout.write("Digite o tipo de instalação (R para Residencial, C para Comercial, I para Industrial): ");
  String tipo = stdin.readLineSync()!.toUpperCase();

  // Verifica se o tipo de instalação é válido
  if (dadosEnergia.containsKey(tipo)) {
    int limite = dadosEnergia[tipo]!['limite'];
    double precoUnitario = consumo <= limite
        ? dadosEnergia[tipo]!['precoMenor']
        : dadosEnergia[tipo]!['precoMaior'];

    // Cálculo do valor total
    double valorTotal = precoUnitario * consumo;

    // Exibe o valor a ser pago
    print("Valor a ser pago: R\$ ${valorTotal.toStringAsFixed(2)}");
  } else {
    print("Tipo de instalação inválido!");
  }
}
