import 'dart:io';

void converterMoeda() {
  print('Digite o valor em Reais (R\$): ');
  double valorReais = double.parse(stdin.readLineSync()!);

  print('Escolha a moeda para conversão:');
  print('1 - Euro (EUR)');
  print('2 - Dólar (USD)');
  print('3 - Franco Suíço (CHF)');

  int escolha = int.parse(stdin.readLineSync()!);

  double taxa;
  String moeda;

  switch (escolha) {
    case 1:
      taxa = 7.00;
      moeda = 'EUR';
      break;
    case 2:
      taxa = 6.56;
      moeda = 'USD';
      break;
    case 3:
      taxa = 4.35;
      moeda = 'CHF';
      break;
    default:
      print('Opção inválida!');
      return;
  }

  double valorConvertido = valorReais / taxa;
  print('Valor convertido: $moeda ${valorConvertido.toStringAsFixed(2)}');
}

void main() {
  converterMoeda();
}
