//
//  main.swift
//  Aula_06(Arthur)
//
//  Created by Turma Manhã on 28/02/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

//**************************** Exercício 07 ******************************


//**************************** Exercício 06 ******************************
//struct trivia
//{
//    var pergunta:[String]
//    var resposta:[String]
//    var valor:[Int]
//}
//var jogo = trivia(
//    pergunta:["Qual a capital da Croácia?","Em que ano Swift 1.0 tornou-se disponível?","Qual o nome do segundo álbum do Vampire Weekend?","Qual a pontuação máxima no judô?","Qual o nome do primeiro brasileiro campeão mundial de Surf?"],
//    resposta:["Zagreb","2014","Contra","ippon","Gabriel Medina"],
//    valor:[1,1,2,3,3])
//while(true)
//{
//        var soma = 0
//        for i in 0 ..< 5
//        {
//            print(jogo.pergunta[i])
//            while(true)
//            {
//                let tentativa = readLine()!
//                if jogo.resposta[i] == tentativa
//                {
//                    print("\nAcertou mizeravi!!\n")
//                    soma += jogo.valor[i]
//                    break
//                }else
//                {
//                    print("\nErroW!!!\n")
//                    break
//                }
//            }
//        }
//    print("Seu resultado final foi: \(soma)")
//}
//**************************** Exercício 05 ******************************
//while(true)
//{
//    var vetor:[Int] = []
//    var soma = 0
//    while(true)
//    {
//        print("Digite o número para adicionar no vetor: ")
//        let numero_s = readLine()!
//        if let numero = Int(numero_s)
//        {
//            vetor.append(numero)
//        }else if numero_s == ""
//        {
//            break
//        }else
//        {
//            print("\nNão é um número!!\n")
//            print("**\(numero_s)**")
//        }
//    }
//    for i in 0 ..< vetor.count
//    {
//        soma += vetor[i]
//    }
//    print("\nMédia: \(soma/vetor.count)\n")
//}
//**************************** Exercício 04 ******************************
//while(true)
//{
//    var soma = 0
//    var vetor:[Int] = []
//
//    while(true)
//    {
//        print("Digite o número do vetor: ")
//        let numero_s = readLine()!
//        if let numero = Int(numero_s)
//        {
//            vetor.append(numero)
//        }else
//        {
//            break
//        }
//    }
//    for i in 0 ..< vetor.count
//    {
//        soma += vetor[i]*vetor[i]
//    }
//    print("O resultado da soma dos quadrados é: \(soma)")
//}

//**************************** Exercício 03 ******************************
//
//while(true)
//{
//    var pontos = 0
//    let pergunta:[String] = ["Qual a capital da Croácia?","Em que ano Swift 1.0 tornou-se disponível?","Qual o nome do segundo álbum do Vampire Weekend?","Qual a pontuação máxima no judô?","Qual o nome do primeiro brasileiro campeão mundial de Surf?"]
//    let resposta:[String] = ["Zagreb","2014","Contra","ippon","Gabriel Medina"]
//    for i in 0 ... 4
//    {
//        print("Pergunta \(i + 1):\n\(pergunta[i])")
//        print("Resposta: ")
//        let tentativa = readLine()!
//        if tentativa == resposta[i]
//        {
//            print("\nAcretou mizeravi!!\n")
//            pontos += 1
//        }else
//        {
//            print("\nErrooooooW!!\n")
//        }
//    }
//    print("\nSeu somatório final foi: \(pontos)\n\n")
//}
//**************************** Exercício 02 ******************************
//while(true)
//{
//    var vetor_A1:[Int] = []
//    var vetor_A2:[Int] = []
//    var vetor_AR:[Int] = []
//    while(true)
//    {
//        print("Digite os números do vetor A1: ")
//        let numero_s = readLine()!
//        if let numero = Int(numero_s)
//        {
//            vetor_A1.append(numero)
//        }else
//        {
//            break
//        }
//    }
//    while(true)
//    {
//        print("\nDigite os números do vetor A2: ")
//        let numero_s = readLine()!
//        if let numero = Int(numero_s)
//        {
//            vetor_A2.append(numero)
//        }else
//        {
//            break
//        }
//    }
//    for i in 0 ..< vetor_A1.count
//    {
//        var diferente = true
//        for j in 0 ..< vetor_A2.count
//        {
//            if vetor_A1[i] == vetor_A2[j]
//            {
//                diferente = false
//            }
//        }
//        if diferente
//        {
//            vetor_AR.append(vetor_A1[i])
//        }
//    }
//    print("\nNúmeros de A1 que não estão em A2: ")
//    for i in 0 ..< vetor_AR.count
//    {
//        print(vetor_AR[i])
//    }
//}
//**************************** Exercício 01 ******************************
//while(true)
//{
//    var i = 0
//    var numero_s = ""
//    var vetor:[Float] = []
//    while(numero_s != "P")
//    {
//        print("Digite os números do array: ")
//        numero_s = readLine()!
//        if let numero = Float(numero_s)
//        {
//            vetor.append(numero)
//        }else
//        {
//            break
//        }
//    }
//    while(i < vetor.count)
//    {
//        if round(vetor[i]) != vetor[i]
//        {
//                vetor.remove(at: i)
//        }else
//        {
//            i += 1
//        }
//    }
//}

