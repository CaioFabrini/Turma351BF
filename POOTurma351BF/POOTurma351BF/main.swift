//
//  main.swift
//  POOTurma351BF
//
//  Created by Caio Fabrini on 29/08/23.
//

import Foundation

// Classe
// Atributo / Propriedades = caracteristicas de um objeto
// Ações = função / métodos
// CLASSE TRABALHA COM REFERENCE TYPE

// Como criar uma classe?
// Utilizamos a palavra reservada class e na sequencia seu nome SEMPRE COM A PRIMEIRA LETRA MAIUSCULA.

class Automovel {
    
    var potenciaMotor: Int = 400
    var marca: String = "Porsche"
    var desembacadorDeVidroTraseiro: Bool = true
    var quantidadeDePortas: Int = 2
    var cor: String = "Preta"
    var conversivel: Bool = true
    var eEletrico: Bool = true
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
    
    func estaAcelerando() {
        print("O carro está acelerando")
    }
    
    func abrirCapota() {
        print("A capota está aberta")
    }
    
}

// A partir do momento que instanciamos uma classe ela se torna um objeto
var porsche: Automovel = Automovel()

//print(porsche.cor)
//
//porsche.cor = "Chumbo"
//
//print(porsche.cor)
//
//porsche.cor = "Verde"
//
//print(porsche.cor)

// Construtores
// Os construtores tem a finalidade de indicar oque a sua classe necessita de uma valor inicial para seus atributos.
// Caso o seu atributo não tenha um valor inicial, você será obrigado a passar ele atraves do init
// Caso seu atributo TENHA um valor inicial, você não é obrigado a ter que utilizar o init

class Pessoa {
    var nome: String
    var idade: Int
    var peso: Double
    var temCabelo: Bool = true
    var esmalte: Bool?
    
    init(nome: String, idade: Int, peso: Double) {
        self.nome = nome
        self.idade = idade
        self.peso = peso
    }
    
    func correr() {
        print("o \(nome) está correndo")
    }
    
    func eCareca() {
        print("o \(nome) ele tem cabelo: \(temCabelo)")
    }
}

var alencar: Pessoa = Pessoa(nome: "Alencar", idade: 57, peso: 80)


// Reference Type

var caio: Pessoa = Pessoa(nome: "Caio", idade: 21, peso: 80)
var felipe: Pessoa = Pessoa(nome: "Felipe", idade: 31, peso: 70)

caio = felipe

//print(caio.nome)
//print(caio.idade)

caio.idade = 40

//print(caio.idade)
//print(felipe.idade)


// MARK: - Herança

// Classe Pai

class Animal {
    
    var nome: String
    var cor: String
    var peso: Double
    
    init(nome: String, cor: String, peso: Double) {
        self.nome = nome
        self.cor = cor
        self.peso = peso
    }
}

// Classe Filha
// Toda a vez que a classe filha necessitar de um construtor ela deve passar as suas propriedades como tambem se a classe pai
// tiver contrutor deve-se então popular com a palavra reservada super.init
// Caso a classe pai não tenha um construtor, não necessita passar o super.init pois a classe pai já tem todos os seus valores iniciais setados.
// Só utilizamos o super.init caso a classe pai tenha um construtor, caso contrario não temos a necessidade de utilizar o super.init

class Gato: Animal {
    
    var miar: Bool
    
    init(miar: Bool, nome: String, cor: String, peso: Double ) {
        self.miar = miar
        super.init(nome: nome, cor: cor, peso: peso)
    }
    
    func brincar() {
        print("O Gato \(nome) está brincando")
    }

}

// Classe Filha

class Cachorro: Animal {
    
    var idade: Int
    var latir: Bool
    
    init(idade: Int, latir: Bool, nome: String, cor: String, peso: Double) {
        self.idade = idade
        self.latir = latir
        super.init(nome: nome, cor: cor, peso: peso)
    }
    
}


var ayron: Cachorro = Cachorro(idade: 1, latir: false, nome: "Ayron", cor: "Branco", peso: 20)

//print(ayron.idade)

var alfredo: Gato = Gato(miar: true, nome: "Alfredo", cor: "Beje", peso: 10)

//print(alfredo.nome)
//alfredo.brincar()

// Classe pai
class TestePessoa {
    var dorminhoco: Bool = true
}

// Classe filha
class Caio: TestePessoa {
    
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
    
}

// MARK: - Polimorfismo

class Carro {
    var marca: String
    var ano: Int
    var potencia: Double
    
    init(marca: String, ano: Int, potencia: Double) {
        self.marca = marca
        self.ano = ano
        self.potencia = potencia
    }
    
    func abrirCapota() {
        print("um simples carro está com a capota aberta")
    }
}

class Fusca: Carro {
    
    override func abrirCapota() {
        print("Um baitaaa carro está com a capota aberta!")
    }
    
}

var carroCaio: Fusca = Fusca(marca: "VW", ano: 1975, potencia: 45)

//carroCaio.abrirCapota()

// MARK: - Encapsulamento

class ItensDeMercado {
    
    private var listaDeItens: [String] = []
    
    public func getListaDeItens() -> [String] {
        return listaDeItens
    }
    
    public func setListDeItens(item: String) {
        listaDeItens.append(item)
    }
    
}

//var itens: ItensDeMercado = ItensDeMercado()
//print(itens.getListaDeItens())
//itens.setListDeItens(item: "Melão")
//print(itens.getListaDeItens())


// Struct
// Struct trabalha com VALUE TYPE
// Struct não precisa de init de forma explicita
// Struct não tem herança
// Struct só aceita estar em conformidade com PROTOCOLO


//class Celular {
//    var modelo: String
//
//    init(modelo: String) {
//        self.modelo = modelo
//    }
//
//}

struct Celular {
    var modelo: String
}

var iphone: Celular = Celular(modelo: "iphone 15")
var android: Celular = Celular(modelo: "Galaxy 25")

//// Exemplo utilizando REFERENCY TYPE -> SENDO CELULAR UMA 'CLASSE'
//iphone = android
//print(iphone.modelo)
//print(android.modelo)
//
//iphone.modelo = "Moto G4"
//print(iphone.modelo)
//print(android.modelo)

// Exemplo utilizando VALUE TYPE -> SENDO CELULAR UMA 'STRUCT'

iphone = android
print(iphone.modelo)
print(android.modelo)

iphone.modelo = "Moto G4"
print(iphone.modelo)
print(android.modelo)


// Referecy type -> Ambos objetos são apontados para a mesma referencia (se caso altero um dos objetodos o outro objeto tambem será alterado obtendo o mesmo valor do outro e assim vice-versa)

// Value Type -> Quando trabalhamos com struct (value type) cada objeto não se refere nada com o outro, sendo assim, caso altere o valor de um objeto o outro objeto, ao contrario da classe, não sofrerá nenhuma alteração.








