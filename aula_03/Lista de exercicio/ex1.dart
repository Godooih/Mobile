
import 'dart:io';

void main(){
  int idade;
  String nome, curso;

  print("Qual é o seu nome?");
  nome = (stdin.readLineSync()!);
  print("Em qual curso vc está?");
  curso = (stdin.readLineSync()!);
  print("Quantos anos vc tem?");
  idade = int.parse(stdin.readLineSync()!);

  print("Este é $nome, está cursando $curso e tem $idade anos");
}