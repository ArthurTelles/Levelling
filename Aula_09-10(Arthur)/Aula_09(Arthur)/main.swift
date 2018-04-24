//
//  main.swift
//  Aula_09(Arthur)
//
//  Created by Turma Manhã on 08/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

//********************************** Exercício 02 **********************************
//struct Ponto {
//    var x: Double
//    var y: Double
//
//    func area() -> Double {
//        return 0
//    }
//    func igual(a outro:Ponto) -> Bool {
//        return self.x == outro.x && self.y == outro.y
//    }
//}
//struct Retangulo {
//    var altura: Double
//    var largura: Double
//    var centro: Ponto
//
//    func area() -> Double {
//        return altura * largura
//    }
//    func igual(a outro:Retangulo) -> Bool {
//        return self.altura == outro.altura && self.largura == outro.largura && self.centro.igual(a:outro.centro)
//    }
//}
//struct Circulo {
//    var raio: Double
//    var centro: Ponto
//
//    func area() -> Double {
//        return raio * raio * Double.pi
//    }
//    func igual(a outro:Circulo) -> Bool {
//        return self.raio == outro.raio && self.centro.igual(a:outro.centro)
//    }
//}

protocol Forma
{
    func area() -> Double
    func igual(a outra:Forma) -> Bool
    func incluiPonto(_ ponto:Ponto) -> Bool
    func incluiForma(_ outra:Forma) -> Bool
    mutating func mover(eixo_x x:Double, eixo_y y:Double)
}
struct Ponto:Forma
{

    var x: Double
    var y: Double

    func area() -> Double { return 0 }

    func igual(a outra:Forma) -> Bool
    {
        if outra is Ponto
        {
            let pto = outra as! Ponto
            return self.x == pto.x && self.y == pto.y
        }else
        {
            return false
        }
    }
    func incluiPonto(_ ponto: Ponto) -> Bool
    {
        return ponto.x == self.x && ponto.y == self.y
    }
    func incluiForma(_ outra: Forma) -> Bool
    {
        if let pto = outra as? Ponto
        {
            return self.x == pto.x && self.y == pto.y
        }else
        {
            return false
        }
    }
    mutating func mover(eixo_x x: Double, eixo_y y: Double)
    {
        self.x += x
        self.y += y
    }
}
struct retangulo_p:Forma
{
    var altura:Double
    var largura:Double
    var centro:Ponto

    func area() -> Double
    {
        return altura * largura
    }
    func igual(a outra: Forma) -> Bool
    {
        if let rtg = outra as? retangulo_p
        {
            return self.altura == rtg.altura && self.largura == rtg.largura && self.centro.x == rtg.centro.x && self.centro.y == rtg.centro.y
        }else
        {
            return false
        }
    }
    func incluiPonto(_ ponto: Ponto) -> Bool
    {
        return ponto.x <= self.largura && ponto.y <= self.altura
    }
    func incluiForma(_ outra: Forma) -> Bool
    {
        if let pto = outra as? Ponto
        {
            return self.centro.x == pto.x && self.centro.y == pto.y
        }else if let rtg = outra as? retangulo_p
        {
            if (rtg.altura <= self.altura) && (rtg.largura <= self.largura)
            {
                return ((rtg.centro.x + rtg.largura/2) <= (self.centro.x + self.largura/2))
                && ((rtg.centro.y + rtg.altura/2) <= (self.centro.y + self.altura/2))
            }
        }else if let cir = outra as? circulo_p
        {
            return (cir.centro.x + cir.raio <= self.centro.x + self.largura)
                && (cir.centro.y + cir.raio <= self.centro.y + self.altura)
                && (cir.centro.x + cir.raio <= self.centro.x - self.largura)
                && (cir.centro.y + cir.raio <= self.centro.y - self.altura)
        }else
        {
            return false
        }
    }
    mutating func mover(eixo_x x: Double, eixo_y y: Double)
    {
        self.centro.x += x
        self.centro.y += y
    }
}
struct circulo_p:Forma
{
    var raio:Double
    var centro:Ponto

    func area() -> Double
    {
        return raio * raio * Double.pi
    }
    func igual(a outra: Forma) -> Bool
    {
        if let cir = outra as? circulo_p
        {
            return self.raio == cir.raio && self.centro.x == cir.centro.x && self.centro.y == cir.centro.y
        }else
        {
            return false
        }
    }
    func incluiPonto(_ ponto: Ponto) -> Bool
    {
        return sqrt(pow((ponto.x - (self.centro.x + self.raio)),2) + pow(ponto.y - (self.centro.y + self.raio),2)) <= self.raio
    }

    func incluiForma(_ outra: Forma) -> Bool
    {
        if let pto = outra as? Ponto
        {
            return (self.centro.x == pto.x) && (self.centro.y == pto.y)
        }else if let rtg = outra as? retangulo_p
        {
            if (rtg.altura/2 + rtg.largura/2) > self.raio
            {
                return false
            }else
            {
                return (rtg.centro.x + rtg.altura/2) <= (self.centro.x + self.raio)
                && (rtg.centro.y + rtg.largura/2) <= (self.centro.x + self.raio)
            }
        }
    }
    mutating func mover(eixo_x x: Double, eixo_y y: Double)
    {
        self.centro.x += x
        self.centro.y += y
    }
}

//********************************** Exercício 01 **********************************
//struct ataques
//{
//    var nome: String
//    var dano: Int
//}
//struct pokemon
//{
//    var nome: String
//    var tipo: String
//    var HP_total: Int
//    var HP_atual: Int
//    var lista_ataques: [ataques]
//
//    init(nome: String, tipo: String, HP_total:Int, lista_ataques:[ataques])
//    {
//        self.nome = nome
//        self.tipo = tipo
//        self.HP_total = HP_total
//        self.HP_atual = HP_total
//        self.lista_ataques = lista_ataques
//    }
//    mutating func batalha(dano: Int, HP_atual: Int)
//    {
//        self.HP_atual = HP_atual - dano
//    }
//}
//
//var charmander = pokemon(nome: "Charmander",tipo: "fogo", HP_total: 50, lista_ataques: [ ataques (nome: "Ember", dano: 30), ataques (nome: "Scratch", dano: 10)])
//var magikarp = pokemon(nome: "Magikarp",tipo: "agua", HP_total: 40, lista_ataques: [ ataques (nome: "Splash", dano: 0)])
//
//while(true)
//{
//    print("Deseja jogar com Charmander ou Magikarp? ", terminator: "")
//    let eu_escolho_voce = readLine()!
//    if eu_escolho_voce == "Charmander" || eu_escolho_voce == "charmander"
//    {
//        print("Escolha o ataque de Charmander: \n\(charmander.lista_ataques[0])\n\(charmander.lista_ataques[1]))")
//        let ataque_escolhido = readLine()!
//        if ataque_escolhido == "Ember" || ataque_escolhido == "ember"
//        {
//            magikarp.batalha(dano: 30, HP_atual: magikarp.HP_atual)
//            print("Charmander ataca Magikarp\nMagikarp (HP: \(magikarp.HP_atual))")
//            if magikarp.HP_atual <= 0
//            {
//                print("\nFim da batalha! Magikarp desmaiou!!\n")
//                break
//            }
//        }else if ataque_escolhido == "Scratch" || ataque_escolhido == "scratch"
//        {
//            magikarp.batalha(dano: 10, HP_atual: magikarp.HP_atual)
//            print("Charmander ataca Magikarp\nMagikarp (HP: \(magikarp.HP_atual))")
//            if magikarp.HP_atual == 0
//            {
//                print("\nFim da batalha! Magikarp desmaiou!!\n")
//                break
//            }
//        }else
//        {
//            print("\nDigite um ataque válido!\n")
//        }
//    }else if eu_escolho_voce == "Magikarp" || eu_escolho_voce == "magikarp"
//    {
//        print("Escolha o ataque de Magikarp: \n\(magikarp.lista_ataques[0])")
//        let ataque_escolhido = readLine()!
//        if ataque_escolhido == "Splash"
//        {
//            print("Magikarp usou Splash, mas nada aconteceu...\nCharmander\(charmander.HP_atual)")
//        }
//    }else
//    {
//        print("\nPokemon Inválido!!!\n")
//    }
//}

