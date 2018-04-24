//
//  main.swift
//  Aula_07(Arthur)
//
//  Created by Turma Manhã on 01/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

//*************************** Exercício 03 *******************************

struct Aluno
{
    var cpf:String
    var nome:String
    var cadeiras:disciplinas
}
struct disciplinas {
    var disciplinas_nome:[String] = []
    var disciplinas_codigo:[String] = []
    var disciplinas_semestre:[String] = []
}
var cadastros:[String:Aluno] = [:]
var alunos:[Aluno] = []
while(true)
{
    print("Deseja adicionar (a),verificar (v) ou remover (r) o aluno? ", terminator:"")
    let opcao_s = readLine()!
    if opcao_s == "a"
    {
        print("Digite o CPF do aluno: ", terminator:"")
        let cpf = readLine()!
        print("Digite o nome do aluno: ", terminator:"")
        let nome = readLine()!
        while(true)
        {
            print("Digite o nome da disciplina cursada, caso não possua digite 'sair': ", terminator:"")
            let disciplina_n = readLine()!
            if disciplina_n == "sair"
            {
                break
            }else
            {
                //salva disciplina
                print("Digite o código da disciplina \(disciplina_n): ", terminator:"")
                let disciplina_c = readLine()!
                //salva codigo
                print("Digite o semestre em que \(disciplina_c) foi cursada: ", terminator:"")
                let disciplina_s = readLine()!
                //salva semestre
            }
        }
        var novo_aluno = Aluno(
            cpf:cpf,
            nome:nome,
            cadeiras:novas_disciplinas)
        
    }else if opcao_s == "v"
    {
    }else if opcao_s == "r"
    {
    }else
    {
        print("\nComando inválido\n")
    }
}
//*************************** Exercício 02 *******************************
//while (true)
//{
//    print("Digite um número para calcular o fatorial de todos os números até ele mesmo:")
//    let teste = readLine()!
//    if let numero_digitado = Int(teste)
//    {
//        for i in 0...numero_digitado
//        {
//            var numero = i
//            var fatorial = 1
//            if numero == 0 || numero == 1
//            {
//                print("Fatorial(\(i)) = 1")
//            }else
//            {
//                while(numero > 1)
//                {
//                    fatorial = fatorial * numero
//                    numero = numero - 1
//                }
//                print("Fatorial(\(i)) = \(fatorial)")
//            }
//        }
//    }else if teste == "sair"
//    {
//        print("\nFim do programa...")
//        break
//    }else
//    {
//        print("\nNúmero inválido!\n")
//    }
//}

//*************************** Exercício 01 *******************************
//while(true)
//{
//    var n_primos:[Int] = []
//    print("Digite um número N para descobrir os números primos entre 1 - N: ")
//    let N_s = readLine()!
//    if let N = Int(N_s)
//    {
//        for i in 2...N
//        {
//            var divisor = 2
//            while(true)
//            {
//                if i % divisor == 0 && divisor != i
//                {
//                    divisor = 2
//                    break
//                }else if divisor == i
//                {
//                    n_primos.append(i)
//                    divisor = 2
//                    break
//                }else
//                {
//                    divisor += 1
//                }
//            }
//        }
//    }
//    print("\nNúmeros primos contidos no intervalo de [1,\(N_s)]: ", terminator: "")
//    for i in 0 ..< n_primos.count
//    {
//        print(" \(n_primos[i])", terminator: "")
//        while i < n_primos.count - 1
//        {
//            print(",",terminator: "")
//            break
//        }
//    }
//    print(".\n")
//}

