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

print(ayron.idade)

var alfredo: Gato = Gato(miar: true, nome: "Alfredo", cor: "Beje", peso: 10)

print(alfredo.nome)
alfredo.brincar()

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

// Desafio
// Criar uma classe pai na qual tenha 3 caracteristicas e 2 ações.
// Criar 2 classes filhas distintas, porem ambas vão herdar da classe pai(super). Cada classe filha terá 3 caracteristicas especificas.
// A classe pai terá construtor para setar seus valores.
// Uma das classes filhas não deve conter construtor.
// Uma das classes filhas deve conter contrutor indicando os valores de todas as suas propriedades.

