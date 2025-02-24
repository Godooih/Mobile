
import 'dart:io';

void main(){
  
  void ObterInformacoes(){
    double b,h,res;
    print("Qual é a base do seu triangulo?(cm)");
    b = double.parse(stdin.readLineSync()!);
    print("Qual é a altura do seu triangulo?(cm)");
    h = double.parse(stdin.readLineSync()!);
    res= (b*h)/2;
    print("A area do triangulo é de $res cm");
  }

  ObterInformacoes();
}