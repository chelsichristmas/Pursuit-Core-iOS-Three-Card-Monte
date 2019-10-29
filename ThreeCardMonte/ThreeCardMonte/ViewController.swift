//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    let arrayOfCards = ["kingCard", "3Card", "3Card"]
  
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    
    @IBAction func flipCard(_ sender: UIButton) {
        //TODO: Show the other side of the card. So I need it to randomly assign an image to each card (an array of images?) And if the player picks the card(button) that has been assigned the King Card it lets them know they won, else they lost.
        let randomCard = arrayOfCards.randomElement() ?? "3Card"
        
        card1.setBackgroundImage(UIImage(named: "\(randomCard)"), for: .normal)
        card2.setBackgroundImage(UIImage(named: "\(randomCard)"), for: .normal)
        card3.setBackgroundImage(UIImage(named: "\(randomCard)"), for: .normal)

        
        // sender.setBackgroundImage(UIImage(named: \(randomCard)), for: .normal)
        
        // Right now all of the cards change to the  same image.
        // TODO: Randomize the the way the image is arranged
    }
    
    @IBAction func newGame(_ sender: UIButton) {
         card1.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
         card2.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
         card3.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
    }
    
    
}
