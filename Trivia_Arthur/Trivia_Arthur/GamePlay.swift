//
//  ViewController.swift
//  Trivia_Arthur
//
//  Created by Turma Manhã on 02/04/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import UIKit

struct trivia
{
    var pergunta:[String]
    var resposta:[String]
    var dica:[String]
}
var jogo = trivia(
    pergunta:["Qual a capital da Croácia?","Qual a pontuação máxima no judô?","Qual o nome do primeiro brasileiro campeão mundial de Surf?"],
    resposta:["zagreb","ippon","gabriel medina"],
    dica:["Começa com 'Z'","A tradução direta significa 'vitória completa'", "Seu sobrenome é medina"])
var i = 0

class GamePlay: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var text_view: UITextView!
    @IBOutlet weak var resposta: UITextField!
    @IBOutlet weak var dica: UISwitch!
    @IBOutlet weak var errow_image: UIImageView!
    
    @IBOutlet weak var acertou_image: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        acertou_image.alpha = 0
        errow_image.alpha = 0
        
        text_view.text = jogo.pergunta[i]
        
        resposta.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        
        if resposta.text?.lowercased() == jogo.resposta[i]
        {
            acertou_image.alpha = 1
        }else if resposta.text?.lowercased() != jogo.resposta[i]
        {
            errow_image.alpha = 1
        }
        return true
    }
    
    @IBAction func dica_on(_ sender: UISwitch)
    {
        if sender.isOn
        {
            acertou_image.alpha = 0
            errow_image.alpha = 0
            text_view.text = "\(jogo.pergunta[i])\n\(jogo.dica[i])"
        }else if !sender.isOn
        {
            acertou_image.alpha = 0
            errow_image.alpha = 0
            text_view.text = jogo.pergunta[i]
        }
    }
    
    @IBAction func stepper(_ sender: UIStepper)
    {
        i = Int(sender.value)
        text_view.text = jogo.pergunta[i]
        errow_image.alpha = 0
        acertou_image.alpha = 0
        dica.isOn = false
    }
    @IBAction func text_size(_ sender: UISlider)
    {
        text_view.font = UIFont(name: (text_view.font?.fontName)!, size: CGFloat(sender.value))
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
