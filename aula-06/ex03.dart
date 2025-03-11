//classe Abstrata

//interface ou contrato

abstract class Forma{
    double CalcularArea();

}

//Classe que vai implementar essa interface

class Circulo implements Forma{
    double raio;
    Circulo(this.raio);

    @override

    double CalcularArea(){
        return 3.14*raio*raio;
    }
}

class Retangulo implements Forma{
    double largura, altura;
    Retangulo(this.largura,this.altura);

    @override
    double CalcularArea(){
        return altura*largura;
    }
}

void main(){
    Forma forma1 = Circulo(5);
    Forma forma2 = Retangulo(4,6);

    print("Area do circulo: ${forma1.CalcularArea()}");
    print("Area do retangulo: ${forma2.CalcularArea()}");
}