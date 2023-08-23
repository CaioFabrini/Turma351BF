//
//  main.swift
//  Estrutura de Repetição + Coleções
//
//  Created by Caio Fabrini on 10/08/23.
//

import Foundation

// MARK: - Estrutura de Repetição

// MARK: While (Enquanto)

// While é uma estrutura de repetição que fica repetindo enquanto a condição for verdadeira

var idade: Int = 10

// Enquando a varivavel idade for menor que 18 irá executar oque está entre as chaves

//while idade < 18 {
//    print("Você é menor de idade, tendo apenas \(idade) anos")
//    idade = idade + 1
//}
//
//print("Agora você é maior de idade: \(idade)")


// MARK: Repeat

var indexRepeat: Int = 100

// O Repeat é uma estrutura de repetição que executa primeiro, e no fim ele questiona se deve repetir ou não

//repeat {
//    print("index: \(indexRepeat)")
//    indexRepeat = indexRepeat + 1
//} while indexRepeat <= 110
//
//print(indexRepeat)


// MARK: For

// O FOR é uma estrutura de repetição que trabalha com sequencia (uma lista de itens) que ela percorre item a item desta lista e conseguindo capturar o valor de cada um deles
// Antes do in você pode colocar o nome que você quiser
// Oque vem antes do in é o valor da posição da lista

//for value in 100...110 {
//    print("O valor é de \(value)")
//}
            

// MARK: - Coleções

// MARK: Array
            
// Array -> Lista ordenada
// Index - > Posição de um elemento dentro da lista
// Array trabalha de maneira ORDENADA -> Suas posições não são alteradas

//                                0         1        2          3       4         5         6
var diasDaSemana: [String] = ["Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado", "Domingo"]

//print(diasDaSemana)

// Como descobrir um valor em uma posição especifica em um array
//print(diasDaSemana[0])

// Como adicionar um item no meu array
// Quando adicionamos um novo item ele sempre vai para a ultima posição da minha lista
//diasDaSemana.append("Teste Caio")
//print(diasDaSemana)

// Como remover um item no meu array
//diasDaSemana.remove(at: 7)
//print(diasDaSemana)

// Como remover todos os itens do meu array
//diasDaSemana.removeAll()
//print(diasDaSemana)

// Saber a quantidade TOTAL de itens na minha lista
//print(diasDaSemana.count)

// Saber se a lista está vazia
//print(diasDaSemana.isEmpty)

// Utilizando o famoso FOR

//       0         1        2          3       4         5         6
// ["Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado", "Domingo"]
//for item in diasDaSemana {
//    print(item)
//}

// MARK: Dicionário

// Não é ordenado!!
// Trabalha com chave(Key) e valor(value)

// um dicionario é composto por [tipo da chave: tipo do valor]
var notas: [Int: String] = [4: "Parabens!!", 2: "Nota média", 3: "Nota Alta", 1: "Nota baixa"]
var altura: [String: Int] = ["Caio": 182, "Bárbara": 163, "Júlio": 192]
print(notas)

// Buscar valores de um dicionario
//print(notas[4] ?? "Um texto qualquer")
//print(altura["Caio"] ?? 0)

// Remover itens do dicionario
//notas.removeValue(forKey: 4)
//print(notas)

// Como adicionar/atualizar itens de um dicionario
// Se a chave não existir ele cria um NOVO item
// Porem se a chave existir ele ATUALIZA o seu valor
//notas.updateValue("Parabens parte 2", forKey: 4)
//print(notas)

// For com dicionario

//[4: "Parabens!!", 2: "Nota média", 3: "Nota Alta", 1: "Nota baixa"]

//for dic in notas {
//    print(dic.value)
//    print(dic.key)
//}





// Exercicios

//Exercício 1: Arrays
//Crie um array contendo os nomes de três aplicativos iOS populares. Imprima o nome do segundo aplicativo na lista.

var list: [String] = ["Whatzapp", "Facebook", "TicTop"]
print(list[1])


//Exercício 2: Dicionários
//Crie um dicionário com os nomes de três cores como chaves e seus códigos hexadecimais como valores. Imprima o código hexadecimal da cor "Verde".

var colors: [String: String] = ["Blue": "#F0043",
                                "Green": "#F0154",
                                "Red": "#F0655"
]

print(colors["Green"] ?? "")

//Exercício 3: Manipulação de Arrays e Dicionários
//Crie um array contendo 10 números inteiros. Adicione um número inteiro à lista e, em seguida, remova o segundo elemento. Imprima o conteúdo final do array.

var listInt: [Int] = [1,2,3,4,5,6,7,8,9,10]
listInt.append(11)
listInt.remove(at: 1)
print(listInt)

//Exercício 4: Acesso a Valores
//Crie um dicionário com os nomes de três frutas e a quantidade que você possui de cada uma. Imprima quantas unidades de uma fruta de sua escolha você possui.

var fruts: [String: Int] = ["Abacaxi": 10,
                            "Melão": 2,
                            "Morango": 35
]

print(fruts["Morango"] ?? 0)


//Exercício 5: Percorrendo um Array
//Dado um array de 5 números inteiros, use um for for para imprimir cada número na lista.

var listFor: [Int] = [1,2,3,4,5]

for value in listFor {
    print(value)
}

//Exercício 6: Percorrendo um Dicionário
//Crie um dicionário com nomes de Nomes como chaves e Sobrenome como valores. Use um loop for para imprimir cada nome e seu sobrenome formando a seguinte frase:
// Olá meu nome é Nome Sobrenome.

var fullName: [String: String] = ["Caio": "Fabrini",
                                "Bárbara": "Brigolin",
                                "José": "Pereira"
]

for value in fullName {
    print("Olá meu nome é \(value.key) \(value.value)")
}
