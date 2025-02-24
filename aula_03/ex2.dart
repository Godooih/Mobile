//Receber dois numeros decimais digitados pelo o usuario, e calcular a media deles

import 'dart:io';

void main(){
  double n1,n2, res;
  print("Digite o primeiro numero");
  //recebe oq o usuario está digitando e converte de string para double
  //double = numeros decimais!
  n1 = double.parse(stdin.readLineSync()!);
  print("Digite o Segundo numero");
  n2 = double.parse(stdin.readLineSync()!);


  res = (n1+n2)/2;
  print("Media: $res");
  if(res>= 5){
    print("Aprovado - $res");
  }else{
    print("Reprovado - $res");
  }
}