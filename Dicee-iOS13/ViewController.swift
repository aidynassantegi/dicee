//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    //IBOutlet allow me to reference an UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  who.         what  = value
        //diceImageView1.image = UIImage(named: "DiceOne")
        (diceImageView1.alpha, diceImageView2.alpha) = (0.5, 0.5)
        
        
    }

    let diceSet = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //Randomisation method 1
        diceImageView1.image = diceSet[Int.random(in: 0...5)]
        //Randomisation method 2
        diceImageView2.image = diceSet.randomElement()!
        (diceImageView1.alpha, diceImageView2.alpha) = (1, 1)
    }
    
}

