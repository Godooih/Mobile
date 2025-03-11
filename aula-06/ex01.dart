// Classe pai
class Animal{

    void fazerSom(){
        print("O animal fez um som!");
    }
}

//Cria classe filha

class Cachorro extends Animal{
    //Polimorfismo

    @override
    void fazerSom(){
        print("O cachorro fez som!");
    }
}

class Gato extends Animal{

    @override
    void fazerSom(){
        print("O Gato mia!");   
    }
}

void main(){
    Animal meuAnimal = Cachorro();
    meuAnimal.fazerSom();
    Animal meuAnimal1 = Gato();
    meuAnimal1.fazerSom();
}