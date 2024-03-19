import UIKit

//1) Observe o trecho de código abaixo:
//
//int INDICE = 13, SOMA = 0, K = 0;
//
//enquanto K < INDICE faça
//
//{
//
//K = K + 1;
//
//SOMA = SOMA + K;
//
//}
//
//imprimir(SOMA);
//
//Ao final do processamento, qual será o valor da variável SOMA?

let INDICE = 13
var SOMA = 0
var K = 0

while K < INDICE {
    K = K + 1
    SOMA = SOMA + K
}

print(SOMA)//91

//2) Dado a sequência de Fibonacci, onde se inicia por 0 e 1 e o próximo valor sempre será a soma dos 2 valores anteriores (exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...), escreva um programa na linguagem que desejar onde, informado um número, ele calcule a sequência de Fibonacci e retorne uma mensagem avisando se o número informado pertence ou não a sequência.
//
//IMPORTANTE:
//
//Esse número pode ser informado através de qualquer entrada de sua preferência ou pode ser previamente definido no código;

func isFibonacci(number: Int) -> Bool {
    var a = 0
    var b = 1
    
    while a < number {
        let temp = a
        a = b
        b = temp + b
    }
    
    return a == number
}

let numero = 21
if isFibonacci(number: numero) {
    print("\(numero) pertence à sequência de Fibonacci.")
} else {
    print("\(numero) não pertence à sequência de Fibonacci.")
}

//3) Descubra a lógica e complete o próximo elemento:
//
//a) 1, 3, 5, 7, ___
//
//b) 2, 4, 8, 16, 32, 64, ____
//
//c) 0, 1, 4, 9, 16, 25, 36, ____
//
//d) 4, 16, 36, 64, ____
//
//e) 1, 1, 2, 3, 5, 8, ____
//
//f) 2,10, 12, 16, 17, 18, 19, ____

// a) Sequência de números ímpares
let proximoA = 7 + 2
print("a) Próximo número na sequência: \(proximoA)")

// b) Sequência de dobrar o número anterior
let proximoB = 64 * 2
print("b) Próximo número na sequência: \(proximoB)")

// c) Sequência de quadrados dos números naturais
let proximoC = 7 * 7
print("c) Próximo número na sequência: \(proximoC)")

// d) Sequência de quadrados dos números pares
let proximoD = 8 * 8
print("d) Próximo número na sequência: \(proximoD)")

// e) Sequência de Fibonacci
let proximoE = 5 + 8
print("e) Próximo número na sequência: \(proximoE)")

// f) Sequência aparentemente aleatória
let proximoF = 19 + 1
print("f) Próximo número na sequência: \(proximoF)")

//4) Você está em uma sala com três interruptores, cada um conectado a uma lâmpada em uma sala diferente. Você não pode ver as lâmpadas da sala em que está, mas pode ligar e desligar os interruptores quantas vezes quiser. Seu objetivo é descobrir qual interruptor controla qual lâmpada.
//
//Como você faria para descobrir, usando apenas duas idas até uma das salas das lâmpadas, qual interruptor controla cada lâmpada?

func descobrirInterruptores() {
    // Ligar o interruptor 1 e esperar um pouco
    print("Ligando o interruptor 1...")
    // Suponhamos que a lâmpada controlada pelo interruptor 1 inicialmente esteja apagada
    var lampada1: Bool = false
    // Ligue o interruptor 1
    let interruptor1: Bool = true
    
    // Desligar o interruptor 1 e ligar o interruptor 2
    print("Desligando o interruptor 1 e ligando o interruptor 2...")
    // Suponhamos que a lâmpada controlada pelo interruptor 2 inicialmente esteja apagada
    var lampada2: Bool = false
    // Desligue o interruptor 1 e ligue o interruptor 2
    let interruptor2: Bool = true
    
    // Sala das lâmpadas
    print("Indo até a sala das lâmpadas...")
    // Suponhamos que a lâmpada controlada pelo interruptor 3 inicialmente esteja acesa
    var lampada3: Bool = true
    
    // Verificar qual interruptor controla cada lâmpada
    if lampada1 {
        print("O interruptor 1 controla a lâmpada 1.")
    }
    if lampada2 {
        print("O interruptor 2 controla a lâmpada 2.")
    }
    if lampada3 {
        print("O interruptor 3 controla a lâmpada 3.")
    }
}
// Chamada da função para descobrir os interruptores
descobrirInterruptores()

//5) Escreva um programa que inverta os caracteres de um string.
//
//
//IMPORTANTE:
//
//a) Essa string pode ser informada através de qualquer entrada de sua preferência ou pode ser previamente definida no código;
//
//b) Evite usar funções prontas, como, por exemplo, reverse;

import Foundation

func inverterString(_ str: String) -> String {
    var invertedString = ""
    for char in str {
        invertedString = String(char) + invertedString
    }
    return invertedString
}

// Exemplo de uso:
let minhaString = "Hello, Target Sistemas!"
let stringInvertida = inverterString(minhaString)
print("String original: \(minhaString)")
print("String invertida: \(stringInvertida)")
