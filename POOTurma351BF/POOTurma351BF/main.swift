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

print(caio.nome)
print(caio.idade)

caio.idade = 40

print(caio.idade)
print(felipe.idade)
