//
//  main.swift
//  Estruturas Condicionais
//
//  Created by Caio Fabrini on 24/08/23.
//

import Foundation

// MARK: - ESTRUTURAS CONDICIONAIS

// if -> Significa "SE"
// Tudo oque está na frente do "if" significa que está realizando uma validação para verificar se é VERDADEIRO OU FALSO

//if 1 + 1 == 2 {
//    // se entrar no primeiro bloco, significa que a condição é VERDADEIRA
//}

// Porem, não podemos prever sempre casos verdadeiros pois existe os casos FALSOS. Com isso utilizamos uma palavra reservada chamada ELSE

//if 1 + 1 == 3 {
//    // se entrar no primeiro bloco, significa que a condição é VERDADEIRA
//    print("Realmente, a condição é verdadeira")
//} else {
//    // se entrar no segundo bloco, significa que a condição é FALSA
//    print("Realmente, a condição é falsa")
//}


func validaMaiorIdade(idade: Int) {
    if idade >= 18 {
        print("Eita, agora pode ir preso em")
    } else {
        print("Continue estudando...")
    }
}

//validaMaiorIdade(idade: 18)

//func valorIngresso(eSocio: Bool) -> Int {
//    if eSocio == true {
//        return 300
//    } else {
//       return 500
//    }
//}
//
//var valorDoIngresso: Int = valorIngresso(eSocio: true)
//print(valorDoIngresso)

// Quem é sócio é 300 quem não 500

//func valorIngressoEmGrupo(quantidadeDePessoas: Int, quantidadeSocio: Int) -> Int {
//    if quantidadeSocio > quantidadeDePessoas {
//        return 0
//    } else {
//        let quantidadeNaoSocias: Int = quantidadeDePessoas - quantidadeSocio
//        let total = (quantidadeSocio * 300) + (quantidadeNaoSocias * 500)
//        return total
//    }
//}
//
//var valorDoIngresso: Int = valorIngressoEmGrupo(quantidadeDePessoas: 100, quantidadeSocio: 50)
//print(valorDoIngresso)

// Validações compostas

// && -> E -> todas as validações tem que ser verdadeiras
// || -> OU -> se uma das validações forem verdadeiras ele retorna true caso contrario false


// Neste metodo verificamos se o usuario tem carteira de motorista E tem o valor do carro de no minimo 10000.
// Caso alguma das condições sejam falsa não podemos comprar o veiculo. Para comprar TODAS DEVEM SER VERDADEIRAS

func vouComprarCarro(carteiraMotorista: Bool, valor: Double) -> Bool {
    if carteiraMotorista == true && valor >= 10000 {
        return true
    } else {
        return false
    }
}

var comprarCarro: Bool = vouComprarCarro(carteiraMotorista: true, valor: 20000)
//print(comprarCarro)


// Se o usuario gastou mais de 1000 reais OU ele tem o cartão fidelidade então ele tem desconto, caso contrario, sem desconto

func descontoLoja(valorTotal: Double, cartaoFidelidade: Bool) -> Bool {
    if valorTotal > 1000 || cartaoFidelidade == true {
        return true
    } else {
        return false
    }
}

var vouTerDesconto: Bool = descontoLoja(valorTotal: 5000, cartaoFidelidade: false)
print(vouTerDesconto)









