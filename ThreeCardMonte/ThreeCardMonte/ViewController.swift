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
        
        //buttons
        
        
    }
    
    @IBAction func FlipCard(_ sender: UIButton) {
        //TODO: Show the other side of the card. So I need it to randomly assign an image to each card (an array of images?) And if the player picks the card(button) that has been assigned the King Card it lets them know they won, else they lost.
        sender.setBackgroundImage(UIImage(named: "KingCard"), for: .normal)
    }
    
    
    
}
