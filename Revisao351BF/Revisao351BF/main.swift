//
//  main.swift
//  Revisao351BF
//
//  Created by Caio Fabrini on 05/12/23.
//

import Foundation



// QUESITOS OBRIGATÓRIO
// LÓGICA DE PROGRAMAÇÃO



// diferença entre var e let

let nome = "Bárbara"

// tipagem

var sobrenome: String = "teste"
var idade = 1234

// opcionais

var meuNome: String?
meuNome = "Caio"
//print(meuNome ?? "deu ruim")

var umValor = "123a4343"
var conversao: Double = Double(umValor) ?? 0
//print(conversao)

// conversao

var quantidade: Double = 14.5
var quantidadeInt: Int = Int(quantidade)
//print(quantidadeInt)

// interpolação - concatenação

var inter: String = "Meu nome é"
var idadeInter: Int = 21
var nomeCompleto = "\(inter) Caio e tenho \(idadeInter) anos"
//print(nomeCompleto)

var nomeCompletoConcatenado = inter + " Caio e tenho " + String(idadeInter) + " anos"
//print(nomeCompletoConcatenado)


// funcoes -> func com/sem retorno - func com/sem parametro - func com/sem parametro e com/sem retorno

func comParametro(valor1: Int, valor2: Int) {
    print(valor1 + valor2)
}

func semParametro() {
    print("Olá Mundo")
}

func comParametroEComRetorno(valor1: Int, valor2: Int) -> Int {
    return valor1 + valor2
}

// estrutura condicionais

func testeIf(valor1: Int?) {
    if let valor1 {
        print(valor1)
    } else {
        print("não existe valor")
    }
}

func testeGuardLet(valor1: Int?) {
    guard let valor1 else {
        return print("não existe valor1")
    }
    print(valor1)
    print(valor1)
    print(valor1)
    print(valor1)
    print(valor1)
}

// estrutura de repetição

//for value in 0...10 {
//    print(value)
//}

// lista - array e dicionario

// array -> lista ordenada (suas posições não se alteram), ela trabalha com index(posição)

var listaNomes: [String] = ["Caio", "Bárbara", "Gabriel", "Felipe"]
//print(listaNomes[0])
//listaNomes.append("José")
//print(listaNomes)
//listaNomes.removeAll()
//listaNomes.remove(at: 0)
//print(listaNomes)

// FOR SIMPLES
//for listaNome in listaNomes {
//    print(listaNome)
//}

// FOR AVANÇADO
//for (index, nome) in listaNomes.enumerated() {
//    print("Meu nome é \(nome) e minha posição é \(index)")
//    if nome == "Gabriel" {
//        //        listaNomes.remove(at: index)
//        listaNomes[index] = "Tadeu"
//    }
//}
//print(listaNomes)

// Dicionario -> é composto por chave e valor e não é ordenado.

var dic: [String: Int] = [
    "Caio": 21,
    "Bárbara": 21,
    "Gabriel": 18,
    "Felipe": 33
]

//print(dic)
//print(dic["Gabriel"] ?? "não existe essa chave")
//dic.updateValue(24, forKey: "Felipe")
//dic.removeValue(forKey: "Caio")
//print(dic)
//for item in dic {
//    if item.value == 21 {
//        dic.removeValue(forKey: item.key)
//    }
//}
//print(dic)


// Class -> reference type

class Casa {
    var quantidadeQuartos = 10
    var eSobrado = false
    
    func abrirJanela() {
        print("a janela está aberta")
    }
}

//var casaCaio = Casa()
//var casaBarbara = Casa()
//
//casaCaio.quantidadeQuartos = 5
//print(casaCaio.quantidadeQuartos)
//
//casaCaio = casaBarbara
//
//casaBarbara.quantidadeQuartos = 8
//
//print(casaCaio.quantidadeQuartos)
//print(casaBarbara.quantidadeQuartos)

// struct -> value type, não aceita herança, aceita apenas conformidade com protocols

struct Casa2 {
    var quantidadeQuartos = 10
    var eSobrado = false
    
    func abrirJanela() {
        print("a janela está aberta")
    }
}

// objeto -> quando instancio meu modelo

var minhaCasa: Casa = Casa()
//print(minhaCasa.quantidadeQuartos)


// Herança, polimorfismo

class Animal {
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
    
    func fazerBarulho() {
        print("o animal está fazendo barulho")
    }
}

class Cachorro: Animal {
    
    var idade: Int
    
    init(idade: Int, nome: String) {
        self.idade = idade
        super.init(nome: nome)
    }
    
    override func fazerBarulho() {
        print("O cachorro está latindo")
    }
    
}


var ayron: Cachorro = Cachorro(idade: 0, nome: "Ayron")
//print(ayron.nome)
//print(ayron.idade)
//ayron.fazerBarulho()


// Encapsulamento

class Meutrabalho {
    
    private(set) var salario = 5000
//    private var salario = 5000
    
//    func getSalario() -> Int {
//        return salario
//    }
    
    // OU
    
    var getSalario: Int {
        return salario
    }
    
    func setSalario(salario: Int) {
        self.salario = salario
    }

}

var meuTrabalho = Meutrabalho()
//print(meuTrabalho.salario)
//meuTrabalho.setSalario(salario: 10000)
//print(meuTrabalho.getSalario)


// Arquitetura -> organização, manuntenção, estrutura, separar responsabilidades, escalabilidade, etc...

