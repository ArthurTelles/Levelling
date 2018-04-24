//
//  main.swift
//  Aula_04(Arthur)
//
//  Created by Turma Manhã on 26/02/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

//*************************** Exercício 05 *******************************
//
//while(true)
//{
//    print("Digite um número para calcular sua raiz cúbica: ")
//    let numero_s = readLine()!
//    if let numero = Int(numero_s)
//    {
//        var i = 1
//        while(i*i*i <= numero)
//        {
//            if i*i*i == numero
//            {
//                print("A raíz cúbica de \(numero) é: \(i)\n")
//                break
//            }else
//            {
//                i += 1
//            }
//        }
//        if i*i*i > numero
//        {
//            print("O número \(numero) não possui raíz cúbica!!\n")
//        }
//    }else
//    {
//        print("\n\(numero_s) NÃO É UM NÚMERO ANIMAL!!!\n")
//    }
//}

//*************************** Exercício 04 *******************************
//while(true)
//{
//    var soma = 0
//    print("Digite um número para somar suas casa decimais: ")
//    let numero_s = readLine()!
//    if var numero = Int(numero_s)
//    {
//        while(numero > 0)
//        {
//            soma += numero % 10
//            numero = numero / 10
//        }
//        print("Somatório: \(soma)\n")
//    }else if numero_s == "s"
//    {
//    print("Fim do programa...\n")
//    break
//    }else
//    {
//    print("\nNÃO É UM NÚMERO!!!\n")
//    }
//}


//*************************** Exercício 03 *******************************
while(true)
{
    print("Digite um número N para descobrir os números primos entre 1 - N: ")
    let N_s = readLine()!
    if let N = Int(N_s)
    {
        for i in 2...N
        {
            var divisor = 2
            while(true)
            {
                if i % divisor == 0 && divisor != i
                {
                    print("\(i) não é primo!!")
                    divisor = 2
                    break
                }else if divisor == i
                {
                    print("\(i) é primo!!!")
                    divisor = 2
                    break
                }else
                {
                    divisor += 1
                }
            }
        }
    }
print("\n")
}

//*************************** Exercício 02 *******************************
//
//while(true){
//    var aux = 2
//    print("Digite um número para saber se é primo: ")
//    let numero_p_s = readLine()!
//    if let numero_p = Int(numero_p_s)
//    {
//        while(true)
//        {
//            if (numero_p % aux) == 0
//            {
//                print("Não é primo!!")
//                break
//            }else if aux < numero_p
//            {
//                print("O número é primo!")
//                break
//            }else
//            {
//                aux += 1
//            }
//        }
//    }
//}

//*************************** Exercício 01 *******************************
//
//while(true)
//{
//    var soma = 0
//    print("Digite um número para somar seus dígitos: ")
//    let numero_s = readLine()!
//    if var numero = Int(numero_s)
//    {
//        if numero == 0
//        {
//            break
//        }else
//        {
//            var resto = numero % 10
//            soma += resto
//            numero = resto/10
//        }
//    }
//    print("\nSomatorio dos números: \(soma)")
//}

