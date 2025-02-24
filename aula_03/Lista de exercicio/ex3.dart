import 'dart:io';

void calcularSalarioLiquido() {
  print('Digite o salário bruto: ');
  double salarioBruto = double.parse(stdin.readLineSync()!);
  double bonificacao = salarioBruto * 0.20; // 20% de bonificação
  double salarioComBonus = salarioBruto + bonificacao;
  double desconto = salarioComBonus * 0.10; // 10% de imposto
  double salarioLiquido = salarioComBonus - desconto;

  print('Salário líquido: R\$ ${salarioLiquido.toStringAsFixed(2)}');
}

void main() {
  calcularSalarioLiquido();
}
