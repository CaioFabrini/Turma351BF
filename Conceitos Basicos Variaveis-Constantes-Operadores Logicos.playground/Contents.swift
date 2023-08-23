import UIKit

// Como criar uma variavel?
// 1 - Utilize a palavra reservada var
// 2 - Coloque um nome para sua variavel, lembrando que esse nome é único.
//  - Informe o valor para sua variavel

// Dicas para nome:
// primeira letra sempre minuscula e das demais palavras sempre maiusculas
// nomes não devem conter espaços, acentos, nem caracteres especiais.



// Variaveis implicitas -> São variaveis que tem o seu tipo implicito podendo aceitar valores de qualquer tipo

var nomeCompleto = "Caio Fabrini"
var idade = 21

// Variaveis Explicitas -> São variaveis que tem o seu tipo explicito podendo aceitar valores apenas do mesmo tipo

var ano: Int = 2023
var caio: String = "Caio L Fabrini"



// Tipagem -> É o tipo de informação que a variavel/constante irá atribuir o valor.

// Dica -> Todas as tipagens se iniciam pela primeira letra maiuscula

// Variaveis do tipo String
// São variaveis que apresentam seu valor como forma de texto
// Para denominar uma string necessita colocar entre aspas duplas ""

var nomeAluno: String = "Júlio"
var tipoChocolate: String = "Amargo"


// Variaveis do tipo Int
// São variaveis que apresentam seu valor como forma número inteiro

var potencia: Int = 500
var peso: Int = 88

// Variaveis do tipo Float e Double
// São variaveis que apresentam seu valor como forma número reais

var numeroFloat: Float =   150.875454545545454
var numeroDouble: Double = 150.875454545545454

// Variaveis do tipo Bool
// São variaveis que apresentam seu valor como verdadeiro ou falso ( true / false)

var desconto: Bool = false
var estaNaPromocao: Bool = false


// ----------------------------------------------

// Operadores Logicos

// Adição

var numeroAdicaoUm: Int = 100
var numeroAdicaoDois: Int = 20
var resultadoAdicao: Int = numeroAdicaoUm + numeroAdicaoDois
//print(resultadoAdicao)

// Subtração

var numeroSubtracaoUm: Int = 100
var numeroSubtracaoDois: Int = 20
var resultadoSubtracao: Int = numeroSubtracaoUm - numeroSubtracaoDois
//print(resultadoSubtracao)

// Multiplicação

var numeroMultiplicacaoUm: Int = 5
var numeroMultiplicacaoDois: Int = 20
var resultadoMultiplicacao: Int = numeroMultiplicacaoUm * numeroMultiplicacaoDois
//print(resultadoMultiplicacao)

// Divisão

var numeroDivisaoUm: Int = 10
var numeroDivisaoDois: Int = 2
var resultadoDivisao: Int = numeroDivisaoUm / numeroDivisaoDois
//print(resultadoDivisao)


// ------------------------------------------


// Transformar tipos:
// Transformar para o tipo String é sempre String(colocar o valor dentro do parenteses) -> ex: String(33423432)

// Concatenação
// É quando juntamos valores com base em uma adição

var frase1: String = "Olá, qual a sua idade: "
var frase2: Int = 21
var frase3: String = " anos"
var resultadoConcatenacao: String = frase1 + String(frase2) + frase3
//print(resultadoConcatenacao)

// Interpolação
// Com a interpolação já converte o tipo sempre para string
// Para utiliza-la é muito simples, basta colocar no local de sua preferencia a \() e dentro do parenteses colocar o seu valor para apresentar na string

var resultadoInterpolacao: String = "Olá, qual a sua idade: \(frase2) anos"
//print(resultadoInterpolacao)


// Variavel vs Constante

// Constante -> utilizamos a palavra reservada let
// A constante não altera valor

var umValor: Int = 10
umValor = 20
//print(umValor)
umValor = 100
//print(umValor)

let umValorFixo: Int = 10
//print(umValorFixo)


// Converter Tipos


// Converter tipos para String

var meuTamanho: Int = 12
var meuTamanhoString: String = String(meuTamanho)
//print(meuTamanhoString)


// String -> Int

var meuNumeroString: String = "5412"

// Toda a vez que tiver uma variavel com "?" opcional significa que pode ou não existir valor (nil)
// nil -> significa que NÃO EXISTE VALOR
// ?? -> Coalescência
// Nil é diferente de 0 ou false, pois nil é NULO

var meuNumeroInt: Int = Int(meuNumeroString) ?? 0
print(meuNumeroInt)

// Opcinais Float

var valorString: String = "14.595"
var valorFloat: Float = Float(valorString) ?? 0.0





















