/*
Exemplo estrutura condicional if/else
*/

import 'dart:io';// permite a entrada de dados via usuario 

void main(){
  int idade;
  print("Digite sua idade");
  idade = int.parse(stdin.readLineSync()!);

  if(idade>=18){
    print("Vc já é maior de idade");
  }else{
    print("Vc ainda não é maior de idade");
  }

}