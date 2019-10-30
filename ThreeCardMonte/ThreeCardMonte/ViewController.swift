//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //setting variables/properties here
    let rangeForTags = 0...2
    var pointCounter = 0
    
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    @IBOutlet weak var pointBox: UITextField!
    @IBOutlet weak var gameStatus: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
  
    
    
    @IBAction func flipCard(_ sender: UIButton) {
        //TODO: Show the other side of the card. So I need it to randomly assign an image to each card (an array of images?) And if the player picks the card(button) that has been assigned the King Card it lets them know they won, else they lost.
        var randomTag = rangeForTags.randomElement()
        if sender.tag == randomTag {
            sender.setBackgroundImage(UIImage(named:"KingCard"), for: .normal)
            pointCounter += 1
            pointBox.text = "\(pointCounter)"
            gameStatus.text = "You Win!"
        
            
            card1.isEnabled = false
            card2.isEnabled = false
            card3.isEnabled = false
            
            
        } else {
            sender.setBackgroundImage(UIImage(named:"3Card"), for: .normal)
             gameStatus.text = "You Lose. Try Again!"
            card1.isEnabled = false
            card2.isEnabled = false
            card3.isEnabled = false
            
            switch randomTag {
            case 0:
                card1.setBackgroundImage(UIImage(named:"KingCard"), for: .normal)
            case 1: card2.setBackgroundImage(UIImage(named:"KingCard"), for: .normal)
            case 2:
                card3.setBackgroundImage(UIImage(named:"KingCard"), for: .normal)
            default:
                print("You Lose")
                
            }
        }
       
        
        
       
        // I need to disable the other buttons
        //
    }
        
        
        
//        card2.setBackgroundImage(UIImage(named:"\(randomCard2)"), for: .normal)
//        
//        card3.setBackgroundImage(UIImage(named:"\(randomCard3)"), for: .normal)
        // sender.setBackgroundImage(UIImage(named: \(randomCard)), for: .normal)
        
        // Right now all of the cards change to the  same image.
        // TODO: Randomize the the way the image is arranged
    

    
    @IBAction func newGame(_ sender: UIButton) {
         card1.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
         card2.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
         card3.setBackgroundImage(UIImage(named: "cardBackRed"), for: .normal)
        
        card1.isEnabled = true
        card2.isEnabled = true
        card3.isEnabled = true
        gameStatus.text = ""

    }
    
    
}
