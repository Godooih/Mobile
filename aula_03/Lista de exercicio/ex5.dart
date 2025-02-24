import 'dart:io';

void calcularMedia() {
  for (int i = 1; i <= 2; i++) {
    print('Digite a nota 1 do aluno $i: ');
    double nota1 = double.parse(stdin.readLineSync()!);

    print('Digite a nota 2 do aluno $i: ');
    double nota2 = double.parse(stdin.readLineSync()!);

    double media = (nota1 + nota2) / 2;

    print('Média do aluno $i: ${media.toStringAsFixed(2)}');

    if (media >= 7) {
      print('Situação: Aprovado');
    } else if (media >= 4 && media < 7) {
      print('Situação: Exame');
    } else {
      print('Situação: Reprovado');
    }
    print('');
  }
}

void main() {
  calcularMedia();
}
