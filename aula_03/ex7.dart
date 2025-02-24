import 'dart:io';

void main(){
  print("Qual o seu nome??");
  String nome = stdin.readLineSync()!;
  saudar(nome);

}
//função do tipo void
void saudar(String nome){
  print("Olá $nome ! Bem vindo!!");
}