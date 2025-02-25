/* 
Exemplo classe com atributos privados
24.02.2025
*/

class Pessoa{
 String? _nome ; //  _ representa atributo privado

 void setNome(String nome){
   _nome = nome;
 }

 String? getNome(){
  return _nome;
 }
}

class Aluno{
  String? nome;
   getNome(){
    return nome;
  }
}

void main(){
  Pessoa cliente = Pessoa();
  cliente._nome="Thales";
  print("Nome do cliente: ${ cliente.getNome()}");
  Pessoa Thales = Pessoa();
  Thales._nome = "Godoi";
  print("${Thales.getNome()}");
  Aluno Pedro = Aluno();
  Pedro.nome= "Pedro";
  print("${Pedro.getNome()}");
  
}