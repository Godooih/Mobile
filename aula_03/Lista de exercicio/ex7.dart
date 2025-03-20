import 'dart:io';

void main() {
  // Recebe os valores dos três modelos de carros
  double valorCarro1 = obterValorCarro(1);
  double valorCarro2 = obterValorCarro(2);
  double valorCarro3 = obterValorCarro(3);

  // Verifica qual é o mais caro e o mais barato
  verificarCarrosMaisCaroBarato(valorCarro1, valorCarro2, valorCarro3);
}

double obterValorCarro(int numeroCarro) {
  // Solicita o valor do carro
  print('Digite o valor médio do Carro $numeroCarro:');
  double valor = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  // Retorna o valor do carro
  return valor;
}

void verificarCarrosMaisCaroBarato(double valor1, double valor2, double valor3) {
  // Verifica qual é o mais caro
  double maisCaro = valor1;
  if (valor2 > maisCaro) maisCaro = valor2;
  if (valor3 > maisCaro) maisCaro = valor3;

  // Verifica qual é o mais barato
  double maisBarato = valor1;
  if (valor2 < maisBarato) maisBarato = valor2;
  if (valor3 < maisBarato) maisBarato = valor3;

  // Exibe os resultados
  print('O carro mais caro custa: R\$ $maisCaro');
  print('O carro mais barato custa: R\$ $maisBarato');
}
