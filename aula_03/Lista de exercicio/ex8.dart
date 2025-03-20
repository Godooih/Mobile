  import 'dart:io';

void main() {
  // Definição dos preços e descontos por tipo de combustível
  Map<String, Map<String, dynamic>> dadosCombustiveis = {
    'E': {'preco': 1.70, 'limite': 15, 'descontoMaior': 0.04, 'descontoMenor': 0.03},
    'D': {'preco': 2.00, 'limite': 15, 'descontoMaior': 0.05, 'descontoMenor': 0.03},
    'G': {'preco': 4.50, 'limite': 20, 'descontoMaior': 0.03, 'descontoMenor': 0.00}
  };

  // Solicita informações ao usuário
  stdout.write("Digite a quantidade de litros comprada: ");
  double quantidade = double.parse(stdin.readLineSync()!);
  
  stdout.write("Digite o tipo de combustível (E para etanol, D para diesel, G para gasolina): ");
  String tipo = stdin.readLineSync()!.toUpperCase();

  // Verifica se o tipo de combustível é válido
  if (dadosCombustiveis.containsKey(tipo)) {
    double precoLitro = dadosCombustiveis[tipo]!['preco'];
    int limite = dadosCombustiveis[tipo]!['limite'];
    double descontoPercentual = quantidade >= limite
        ? dadosCombustiveis[tipo]!['descontoMaior']
        : dadosCombustiveis[tipo]!['descontoMenor'];

    // Cálculo do desconto e valor total
    double desconto = precoLitro * quantidade * descontoPercentual;
    double valorTotal = (precoLitro * quantidade) - desconto;

    // Exibe o valor a ser pago
    print("Valor a ser pago: R\$ ${valorTotal.toStringAsFixed(2)}");
  } else {
    print("Tipo de combustível inválido!");
  }
}
