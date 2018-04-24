//
//  main.swift
//  Aula_05(Arthur)
//
//  Created by Turma Manhã on 27/02/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

//****************************** Exercício 06 ********************************
while(true)
{
    var vetor_1:[Int] = []
    var vetor_2:[Int] = []
    var vetor_r:[Int] = []

    while(true)
    {
        print("Digite o número que deseja somar e digite P para digitar o próximo vetor: ")
        let numero_s = readLine()!
        if let numero = Int(numero_s)
        {
            vetor_1.append(numero)
        }else if numero_s == "P"
        {
            break
        }
    }
    while(true)
    {
        print("Digite o número que deseja somar e digite P para digitar o próximo vetor: ")
        let numero_s = readLine()!
        if let numero = Int(numero_s)
        {
            vetor_2.append(numero)
        }else if numero_s == "P"
        {
            break
        }
    }
    for i in 0..<vetor_1.count
    {
        if vetor_1[i] % 2 == 1
        {
            vetor_r.append(vetor_1[i])
        }
    }
    for i in vetor_r.count - 1 ..< vetor_2.count
    {
        if vetor_2[i] % 2 == 1
        {
            vetor_r.append(vetor_2[i])
        }
    }

    print("Os números ímpares são: ")
    for i in 0 ..< vetor_r.count
    {
        print(vetor_r[i])
    }
}

//****************************** Exercício 05 ********************************
//while(true)
//{
//    var maior = 0
//    var soma = 0
//    var i = 0
//    var inteiros:[Int] = []
//    while(true)
//    {
//        print("Digite o número que deseja somar e digite S para realizar a soma: ")
//        let numero_s = readLine()!
//        if let numero = Int(numero_s)
//        {
//            inteiros.append(numero)
//            i += 1
//        }else if numero_s == "S"
//        {
//            break
//        }
//    }
//    for i in 0 ..< inteiros.count
//    {
//        soma += inteiros[i]
//        if inteiros[i] > maior
//        {
//            maior = inteiros[i]
//        }
//    }
//    print("O resultado da soma é: \(soma)\nO maior número da soma é: \(maior)")
//}
//****************************** Exercício 04 ********************************
//while(true)
//{
//    var soma = 0
//    var i = 0
//    var inteiros:[Int] = []
//    while(true)
//    {
//        print("Digite o número que deseja somar e s para realizar a soma: ")
//        let numero_s = readLine()!
//        if let numero = Int(numero_s)
//        {
//            inteiros.append(numero)
//            i += 1
//        }else if numero_s == "s"
//        {
//            break
//        }
//    }
//    for i in 0 ..< inteiros.count
//    {
//        soma += inteiros[i]
//    }
//    print("O resultado da soma é: \(soma)")
//}

//****************************** Exercício 03 ********************************
//
//while(true)
//{
//    var check = true
//    var n_primo_s = ""
//    while(check)
//    {
//        print("Digite um número não primo para saber seus divisores: ")
//        n_primo_s = readLine()!
//        if let n_primo = Int(n_primo_s)
//        {
//            for i in 2 ... n_primo
//            {
//                if n_primo % i == 0 && i != n_primo
//                {
//                    check = false
//                    break
//                }else
//                {
//                    check = true
//                }
//            }
//            if check
//            {
//                print("\(n_primo) é primo!!")
//            }
//        }else
//        {
//            print("\nNão é um número!!\n")
//        }
//    }
//    if let n_primo = Int(n_primo_s)
//    {
//
//        for n_primo_var in 2 ... n_primo
//        {
//            for divisor_var in 2 ... n_primo_var
//            {
//                if n_primo_var % divisor_var == 0 && n_primo_var != divisor_var
//                {
//                    print("Divisores de \(n_primo_var): \(divisor_var)")
//                }
//            }
//        }
//
//    }else if n_primo_s == "s"
//    {
//        print("\nFim do programa...\n")
//        break
//    }else
//    {
//        print("\n\(n_primo_s) não é número!!\n")
//    }
//}

//****************************** Exercício 02 ********************************
//while(true)
//{
//    print("Digite um número N, para calcular todas as médias aritméticas entre 1 - j: ")
//    let N_s = readLine()!
//    if let N = Int(N_s)
//    {
//        var soma = 0
//        for j in 1 ... N
//        {
//            for i in 2 ... N
//            {
//                print("A média aritmética de \(j) e \(i) é: \((i + j)/2)")
//            }
//        }
//        for i in 1...N
//        {
//            soma += i
//        }
//        print("A média aritmética total é: \(soma/N)")
//    }else if N_s == "s"
//    {
//        print("\nFim do programa...")
//        break
//    }else
//    {
//        print("\nNão é um número animal!!\n")
//    }
//}

//****************************** Exercício 01 ********************************
//
//while(true)
//{
//    var menor = 1
//    var maior = 1
//    var fib = 1
//
//    print("Digite um número n para saber sua função Fibonacci: ")
//    let n_s = readLine()!
//    if let n = Int(n_s)
//    {
//        if n == 0 || n == 1
//        {
//            print("Fibonacci de \(n) é : 1\n")
//        }else
//        {
//            for _ in 2 ... n
//            {
//                fib = maior + menor
//                menor = maior
//                maior = fib
//            }
//            print("Fibonacci de \(n_s) é : \(fib)\n")
//        }
//    }else if n_s == "s"
//    {
//        print("\nFim do programa...\n")
//        break
//    }else
//    {
//        print("\n\(n_s) não é um número!!!!\n")
//    }
//}

