




import 'dart:io';

void main(){
  double n1, n2, res;//variaveis para fazer o armazenamneto dos dados
  var op,ch;//variavel para armazenar a opção dos usuarios
print("+ - Soma");
print("- - Subtração");
print("* - Multiplicação");
print("/ - Divisão");
print("Digite o n1");
n1=double.parse(stdin.readLineSync()!);
print("Digite o valor de n2");
n2= double.parse(stdin.readLineSync()!);
print("Escolha a operação desejada");
op = stdin.readLineSync()!;
switch(op){
  case '+':
    res = n1+n2;
    print("Resultado: $res");
  break;

  case '-':
    res = n1-n2;
    print("Resultado: $res");
  break;

  case '*':
    res = n1*n2;
    print("Resultado: $res");
  break;

  case '/':
    res = n1/n2;
    if(n2!= 0){
      print("Resultado: $res");
    }else{
      print("O valor de n2 está incorreto, digite novamente:");
    }
    
  break;
}
}