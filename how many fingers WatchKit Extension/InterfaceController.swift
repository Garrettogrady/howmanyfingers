//
//  InterfaceController.swift
//  how many fingers WatchKit Extension
//
//  Created by Garrett O'Grady on 4/10/15.
//  Copyright (c) 2015 heyogrady. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var guess: WKInterfaceSlider!
    
    @IBOutlet var guessLabel: WKInterfaceLabel!
    
    var guessNumber:Int = 3;
    
    @IBAction func guessPressed() {
        
        var rand = Int(arc4random_uniform(6))
        
        if rand == guessNumber {
            resultLabel.setText("Correct!")
        }
        else {
            resultLabel.setText("Wrong! it was \(rand)")
        }
    }
    
    @IBAction func guessUpdated(value: Float) {
        
        guessNumber = Int(value * 5)
        
        guessLabel.setText("Your Guess: \(guessNumber)")
    }
    @IBOutlet var resultLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
