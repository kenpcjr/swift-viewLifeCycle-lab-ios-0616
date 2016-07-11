//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var upperLeftSquare: UIView!
    @IBOutlet weak var lowerLeftSquare: UIView!
    @IBOutlet weak var upperRightSquare: UIView!
    @IBOutlet weak var lowerRightSquare: UIView!
    @IBOutlet weak var centerSquare: UIView!
    @IBOutlet weak var leftCenterSquare: UIView!
    @IBOutlet weak var rightCenterSquare: UIView!

    @IBOutlet var scoreLabel: [UILabel]!
   
    var rolledValue = 0
    var rollCounter = 0

    
    @IBAction func dieTapped(sender: AnyObject) {
        if rollCounter == 6{
            reset()
        }
        
        rolledValue = randomDiceRoll()
        scoreLabel[rollCounter].text = "\(rolledValue)"
        scoreLabel[rollCounter].hidden = false
        rollCounter += 1
        updateDie(rolledValue)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        upperLeftSquare.hidden = true
        lowerLeftSquare.hidden = true
        centerSquare.hidden = true
        upperRightSquare.hidden = true
        lowerRightSquare.hidden = true
        leftCenterSquare.hidden = true
        rightCenterSquare.hidden = true
        
        for label in scoreLabel{
            label.hidden = true
            label.text = "0"
        }

        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateDie(roll: Int){
        if roll == 1 {
            upperLeftSquare.hidden = true
            lowerLeftSquare.hidden = true
            centerSquare.hidden = false
            upperRightSquare.hidden = true
            lowerRightSquare.hidden = true
            leftCenterSquare.hidden = true
            rightCenterSquare.hidden = true
        }
        if roll == 2 {
            upperLeftSquare.hidden = false
            lowerLeftSquare.hidden = true
            centerSquare.hidden = true
            upperRightSquare.hidden = true
            lowerRightSquare.hidden = false
            leftCenterSquare.hidden = true
            rightCenterSquare.hidden = true
        }
        if roll == 3 {
            upperLeftSquare.hidden = false
            lowerLeftSquare.hidden = true
            centerSquare.hidden = false
            upperRightSquare.hidden = true
            lowerRightSquare.hidden = false
            leftCenterSquare.hidden = true
            rightCenterSquare.hidden = true
        }
        if roll == 4 {
            upperLeftSquare.hidden = false
            lowerLeftSquare.hidden = false
            centerSquare.hidden = true
            upperRightSquare.hidden = false
            lowerRightSquare.hidden = false
            leftCenterSquare.hidden = true
            rightCenterSquare.hidden = true
        }
        if roll == 5 {
            upperLeftSquare.hidden = false
            lowerLeftSquare.hidden = false
            centerSquare.hidden = false
            upperRightSquare.hidden = false
            lowerRightSquare.hidden = false
            leftCenterSquare.hidden = true
            rightCenterSquare.hidden = true
        }
        if roll == 6 {
            upperLeftSquare.hidden = false
            lowerLeftSquare.hidden = false
            centerSquare.hidden = true
            upperRightSquare.hidden = false
            lowerRightSquare.hidden = false
            leftCenterSquare.hidden = false
            rightCenterSquare.hidden = false
        }



    }
    
    func reset(){
        
        upperLeftSquare.hidden = true
        lowerLeftSquare.hidden = true
        centerSquare.hidden = true
        upperRightSquare.hidden = true
        lowerRightSquare.hidden = true
        leftCenterSquare.hidden = true
        rightCenterSquare.hidden = true
        
        for label in scoreLabel{
            label.hidden = true
            label.text = "0"
        }
        
        rollCounter = 0
    }
}
