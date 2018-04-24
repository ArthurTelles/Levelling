//
//  main.swift
//  Aula_01(Arthur)
//
//  Created by Turma Manhã on 2/21/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//
var pontos = 0

let pergunta_1 = "Qual a capital da Croácia?"
let resposta_1 = "Zagreb"

let pergunta_2 = "Em que ano Swift 1.0 tornou-se disponível?"
let resposta_2 = "2014"

let pergunta_3 = "Qual o nome do segundo álbum do Vampire Weekend?"
let resposta_3 = "Contra"

let pergunta_4 = "Qual a pontuação máxima no judô?"
let resposta_4 = "ippon"

let pergunta_5 = "Qual o nome do primeiro brasileiro campeão mundial de Surf?"
let resposta_5 = "Gabriel Medina"

print(pergunta_1)
var palpite = readLine()
if (palpite == resposta_1){
    
    print("Acertou mizeravi!")
    pontos = pontos + 1
}else{
    
    print("Ta burrinho hein!?")
    pontos = pontos - 1
}
print(pergunta_2)
palpite = readLine()
if (palpite == resposta_2){
    
    print("Acertou mizeravi!")
    pontos = pontos + 1
    
}else{
    
    print("Ta burrinho hein!?")
    pontos = pontos - 1
    
}
print(pergunta_3)
palpite = readLine()
if (palpite == resposta_3){
    
    print("Acertou mizeravi!")
    pontos = pontos + 1
    
}else{
    
    print("Ta burrinho hein!?")
    pontos = pontos - 1
    
}
print(pergunta_4)
palpite = readLine()
if (palpite == resposta_4){
    
    print("Acertou mizeravi!")
    pontos = pontos + 1
    
}else{
    
    print("Ta burrinho hein?!")
    pontos = pontos - 1
    
}
print(pergunta_5)
print(" a) Adriano de Souza\n b) Gabriel Medina\n c) Felipe Toledo\n d) Mineirinho")
print("Escolha uma das opções acima: ")
palpite = readLine()
if (palpite == "b" || palpite == "B"){
    
    print("Acertou mizeravi!")
    pontos = pontos + 1
}else{
    
    print("Ta burrinho hein!?")
    pontos = pontos - 1
    
}

if(pontos < 0){ pontos = 0}
print("Sua pontuação total foi: \(pontos)")
