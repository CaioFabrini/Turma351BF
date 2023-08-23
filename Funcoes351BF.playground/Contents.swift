import UIKit

// MARK: - Funções / Métodos

// Uma função é um bloco de código que executa algo e que pode ser reutilizavel quando quiser.
// Uma função executa tudo aquilo que está dentro do bloco de codigo (entre as chaves { } )
// Uma função tem 3 tipos
// Função sem parametro e sem retorno
// Função com parametro e sem retorno
// Função com parametro e com retorno
// Como criar uma função:
// Informe a palavra reservada func e na sequencia informe o nome da função (o nome da função é uma das parte mais importantes da função, pois ela tem que deixar claro exatamente oque ela vai executar).
// Abra e feche os parenteses, caso tenha parametros os informe, caso constrario não.
// ->
// Abra e feche as chaves


// MARK: Função sem retorno e sem parametro

func exibirNomes() {
    print("Meu nome é Caio")
    print("Meu nome é Caio")
    print("Meu nome é Caio")
    print("Meu nome é Caio")
    print("Meu nome é Caio")
    print("Meu nome é Caio")
}

func ligarMotor() {
    print("O motor está ligado")
}

//exibirNomes()
//ligarMotor()

// MARK: Função com parametro e sem retorno

// Parametros
// Sempre explicitos
// Podem ser de qualquer tipagem
// Podem ser até mesmo opcionais
// Pode conter a quantidade que for necessario para aquela funcao
// nomenclatura -> fica a sua preferencia


// Quando utilizar parametros?

// Quando sua função precisa daquela informação que está de forma externa. Uma função com parametros ela consegue ser escalavel e reutilizavel em outros locais.

func soma(valor1: Int, valor2: Int) {
    let resultado: Int = valor1 + valor2
    print("O valor da soma é de: \(resultado)")
}


//soma(valor1: 36, valor2: 50)

func identidadeCompleta(nome: String, sobrenome: String, idade: Int) {
    print("Olá meu nome é \(nome) \(sobrenome) e minha idade é \(idade) anos")
}

//identidadeCompleta(nome: "Caio", sobrenome: "Fabrini", idade: 21)
//
//identidadeCompleta(nome: "Bárbara", sobrenome: "Brigolin", idade: 40)
//
//identidadeCompleta(nome: "Albert", sobrenome: "Junior", idade: 60)


func media(idade: Int, peso: Double, altura: Double?) {
    var alturaTotal: Double = altura ?? 0
    var media = (Double(idade) + peso + alturaTotal) / 3
    print("A média foi de: \(media)")
}

//media(idade: 21, peso: 85, altura: 1.85)


// MARK: Função sem parametro e com retorno

// Funcao com retorno como o nome já diz, ela me retorna oque eu especifiquei
// Para criar uma funcao de retorno precisamos colocar o -> depois do parenteses e antes da chave
// A tipagem deve ser explicita e pode ser qualquer tipo
// As funcoes de retorno necessita ter a palavra reservada return para retornar algo do tipo especificado.

func meuNomeE() -> String {
    return "Meu nome é Caio"
}

var meuNome: String = meuNomeE()
//print(meuNome)

// MARK: Função com parametro e com retorno

func divisao(valor1: Double, valor2: Double) -> Double {
    let total = valor1 / valor2
    return total
}

var valorDivisao: Double = divisao(valor1: 100, valor2: 10)
//print(valorDivisao)


// Desafio 1

func somaDesafio(valor1: Int, valor2: Int, valor3: Int) -> Int {
    let total = valor1 + valor2 + valor3
    return total
}

var valor = somaDesafio(valor1: 10, valor2: 30, valor3: 50)
print(valor)

// Desafio 2

func exibirMensagem() {
    print("Olá Mundo, estou aprendendo a criar minhas primeiras funções")
}

exibirMensagem()


