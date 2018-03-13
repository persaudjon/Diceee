//
//  ViewController.swift
//  Dicee
//
//  Created by Jonathan Persaud on 2/27/18.
//  Copyright © 2018 Jonathan Persaud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        changeDiceImages()
        
    }
    
    func changeDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        /* One way to do
         let diceResult1 = "dice" + String(randomDiceIndex1+1)
         let diceResult2 = "dice" + String(randomDiceIndex2+1)
         
         diceImageView1.image = UIImage(named: diceResult1)
         diceImageView2.image = UIImage(named: diceResult2)
         */
        
        //Another way to do it
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeDiceImages()
    }
    
}

