//
//  main.swift
//  Aula_03(Arthur)
//
//  Created by Turma Manhã on 23/02/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//
import Foundation

//********************************* Exercício 07 *****************************************












//********************************* Exercício 06 *****************************************
//
//while (true)
//{
//    var fatorial = 1
//    print("Digite um número para calcular o fatorial:")
//    let teste = readLine()!
//    if var numero = Int(teste)
//    {
//        if numero == 0
//        {
//            print("Fatorial = 1")
//        }else
//        {
//            while(numero > 1)
//            {
//                fatorial = fatorial * numero
//                numero = numero - 1
//            }
//            print("Fatorial = \(fatorial)")
//        }
//    }else
//    {
//        print("\nNúmero inválido!")
//    }
//}



//********************************* Exercício 05 *****************************************
//var total = 0
//while(true)
//{
//    print("Digite um número para ser somado (zero encerra o programa): ")
//    var numero = readLine()!
//    if let teste = Int(numero)
//    {
//        if teste == 0
//        {
//            break
//        }else
//        {
//            total += teste
//        }
//    }else
//    {
//        print("Não é um número!!")
//    }
//}
//print("Total somado: \(total)")

//********************************* Exercício 04 *****************************************
//for var i in 1...100
//{
//    if (i % 3 == 0) && (i % 5 != 0)
//    {
//        print("Fizz")
//    }else if (i % 3 != 0) && (i % 5 == 0)
//    {
//        print("Buzz")
//    }else if (i % 3 == 0) && (i % 5 == 0)
//    {
//        print("FizzBuzz")
//    }else
//    {
//        print(i)
//    }
//    print("\n")
//}

////********************************* Exercício 03 *****************************************
//var operador = ""
//var sair = 0
//
//repeat
//{
//    print("Digite o operador desejado (+, -, * ou /) ou s para sair: ")
//    operador = readLine()!
//    if operador == "+"
//    {
//        print("Digite os operandos: ")
//        let x = readLine()!
//        let y = readLine()!
//        if let teste1 = Int(x)
//        {
//            if let teste2 = Int(y)
//            {
//
//                print("Resultado: \(teste1 + teste2)")
//            }else
//            {
//                print("\nOperando inválido")
//                sair = 1
//            }
//        }else
//        {
//            print("\nOperando inválido")
//            sair = 1
//        }
//    }else if operador == "-"
//    {
//        print("Digite os operandos: ")
//        let x = readLine()!
//        let y = readLine()!
//        if let teste1 = Int(x)
//        {
//            if let teste2 = Int(y)
//            {
//
//                print("Resultado: \(teste1 - teste2)")
//            }else
//            {
//                print("\nOperando inválido")
//                sair = 1
//            }
//        }else
//        {
//            print("\nOperando inválido")
//            sair = 1
//        }
//    }else if operador == "*"
//    {
//        print("Digite os operandos: ")
//        let x = readLine()!
//        let y = readLine()!
//        if let teste1 = Int(x)
//        {
//            if let teste2 = Int(y)
//            {
//
//                print("Resultado: \(teste1 * teste2)")
//            }else
//            {
//                print("\nOperando inválido")
//                sair = 1
//            }
//        }else
//        {
//            print("\nOperando inválido")
//            sair = 1
//        }
//    }
//    else if operador == "/"
//    {
//        print("Digite os operandos: ")
//        let x = readLine()!
//        let y = readLine()!
//        if let teste1 = Int(x)
//        {
//            if let teste2 = Int(y)
//            {
//                if teste2 == 0
//                {
//                    print("\nNão se pode dividir por zero animal!")
//                }else
//                {
//                    print("Resultado: \(teste1 / teste2)")
//                }
//            }else
//            {
//                print("\nOperando inválido")
//                sair = 1
//            }
//        }else
//        {
//            print("\nOperando inválido")
//            sair = 1
//        }
//    }else
//    {
//    print("\nOperador inválido")
//    sair = 1
//    }
//}while(sair == 0)
//print("\nFim do programa...")

////********************************* Exercício 02 (otimizado) *****************************************
//
//print("Digite 3 números para colocá-los em ordem crescente: ")
//let numero_1 = Int(readLine()!)!
//let numero_2 = Int(readLine()!)!
//let numero_3 = Int(readLine()!)!
//
//let maior = max(numero_1,numero_2,numero_3)
//let menor = min(numero_1,numero_2,numero_3)
//
//print("Ordem crescente: \(menor) < \(numero_1 + numero_2 + numero_3 - maior - menor) < \(maior)")

////********************************* Exercício 02 *****************************************
//var maior = 0
//var meio = 0
//let menor = 0
//
//print("Digite 3 números para colocá-los em ordem crescente: ")
//let numero_1 = Int(readLine()!)!
//
//maior = numero_1
//
//let numero_2 = Int(readLine()!)!
//if maior < numero_2{
//
//    maior = numero_2
//    meio = numero_1
//
//}else{
//
//    meio = numero_2
//}
//let numero_3 = Int(readLine()!)!
//if maior < numero_3{
//
//    menor = meio
//    meio = maior
//    maior = numero_3
//
//}else if numero_3 < meio{
//
//    menor = numero_3
//
//}else if numero_3 > meio && numero_3 < maior{
//
//    menor = meio
//    meio = numero_3
//
//}
//print("Ordem crescente: \(menor) < \(meio) < \(maior)")

//********************************* Exercício 01 *****************************************
//var numero = 0
//
//repeat{
//
//    print("Digite um número entre 100 e 999 para saber se é divisível por 3: ")
//    numero = Int(readLine()!)!
//
//    if numero < 100 || numero > 999 {
//
//        print("\nNúmero não está no intervalo pedido [100],[999].")
//
//    }else if (numero >= 100 || numero <= 999) && (numero % 3 != 0) {
//
//        print("\nNúmero não divisível por 3.")
//    }else if (numero >= 100 || numero <= 999) && (numero % 3 == 0){
//
//        print("\nNúmero divisível por 3.\n")
//    }
//
//} while(numero % 3 != 0)

