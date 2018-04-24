//
//  main.swift
//  Aula_08(Arthur)
//
//  Created by Turma Manhã on 05/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

//********************************** Exercício 03 **********************************

struct RETANGULO {
    var x : Double
    var y : Double
    var centro_x : Double
    var centro_y : Double
    
    init(x:Double,y:Double)
    {
        self.x = x
        self.y = y
        self.centro_x = self.x / 2
        self.centro_y = self.y / 2
    }
    
    func calc_Area()
    {
        print("A área do retangulo 1 é: \(self.x*self.y)")
    }
    
    func igualdade(_ x: Double, _ y: Double)
    {
        if x == self.x && y == self.y
        {
            return print("Retângulos iguais.")
        }else
        {
            print("Retângulos diferentes.")
        }
    }
    
    func distancia(_ x:Double,_ y:Double)
    {
        return print("A distância em relação ao centro no eixo X é: \(self.centro_x - x)\nA distância em relação ao centro no eixo Y é: \(self.centro_y - y)")
    }
}
while(true)
{
    var retangulo1 = RETANGULO(x:0,y:0)
    print("Digite o tamanho dos lados do retângulo 1 ou 's' para sair: ", terminator:"")
    let x_s = readLine()!
    if let x = Double(x_s)
    {
        let y_s = readLine()!
        if let y = Double(y_s)
        {
            retangulo1 = RETANGULO(x: x,y: y)
            
        }else
        {
            print("\nNão é um número!!\n")
        }
    }else if x_s == "s"
    {
        break
    }else
    {
         print("\nNão é um número!!\n")
    }
    print("Digite o tamanho dos lados do retângulo 2 ou 's' para sair: ", terminator:"")
    let x2_s = readLine()!
    if let x2 = Double(x2_s)
    {
        let y2_s = readLine()!
        if let y2 = Double(y2_s)
        {
            retangulo1.calc_Area()
            retangulo1.igualdade(x2, y2)
            retangulo1.distancia(x2/2,y2/2)
        }else
        {
            print("\nNão é um número!!\n")
        }
    }else if x_s == "s"
    {
        break
    }else
    {
        print("\nNão é um número!!\n")
    }
}

//********************************** Exercício 02 **********************************
//
//func elevaPotencia(_ x:[[Int]],_ y:[[Int]]) -> [[Int]]
//{
//    var m_soma:[[Int]] = [[],[]]
//    for i in 0 ..< x.count
//    {
//        for j in 0 ..< x.count
//        {
//            m_soma[i].append(x[i][j] + y[i][j])
//        }
//    }
//    return m_soma
//}
//var x:[[Int]] = [[1,2],[3,4]]
//var y:[[Int]] = [[4,3],[2,1]]
//while(true)
//{
//    let  resultado:[[Int]] = elevaPotencia(x, y)
//    print("Soma das matrizes:\n")
//    for i in 0..<resultado.count
//    {
//        print("[", terminator:"")
//        for j in 0..<resultado.count
//        {
//            print(" \(resultado[i][j]) ", terminator:"")
//        }
//        print("]")
//    }
//    print("\n")
//    break
//}

//********************************** Exercício 01 **********************************
//func somaQuadrado(_ x:Int, _ y:Int) -> Int
//{
//    return x*x + y*y
//}
//
//while(true)
//{
//    print("Digite dois números para somar seus quadrados: ", terminator: "")
//    let numero1_s = readLine()!
//    if let numero1 = Int(numero1_s)
//    {
//        let numero2_s = readLine()!
//        if let numero2 = Int(numero2_s)
//        {
//            print("a soma dos quadrados de \(numero1) e \(numero2) é: \(somaQuadrado(numero1,numero2))\n")
//        }
//        else
//        {
//            print("\nNão é um número válido!!\n")
//        }
//    }else
//    {
//        print("\nNão é um número válido!!\n")
//    }
//}

