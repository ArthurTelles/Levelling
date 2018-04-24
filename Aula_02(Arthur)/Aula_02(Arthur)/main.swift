//
//  main.swift
//  Aula_02(Arthur)
//
//  Created by Turma Manhã on 22/02/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//
import Foundation

var contador = 0
print("Jogador 1 digite o numero: ")
let numero = Int(readLine()!)!
print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")

while(contador < 3){

    print("Joagador 2 dê o seu palpite: ")
    var palpite = Int(readLine()!)!

    if palpite == numero {
        print("Acertou mizeravi!!")
        break
    }else if palpite < numero {
        print("Palpite muito baixo, tente novamente: ")
    }else if palpite > numero {
        print("Palpite muito alto, tente novamente:")
    }
    contador += 1
}
 if (contador == 3){
    print("\nNumero de tentativas esgotado!")
 }

