//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by Lupti on 6/4/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate{
    
    // Set up an array pf colors
    let colors = [UIColor.redColor(),
                    UIColor.orangeColor(),
                    UIColor.greenColor(),
                    UIColor.blueColor(),
                    UIColor.purpleColor(),
                    UIColor.brownColor(),
                    UIColor.yellowColor(),
                    UIColor.cyanColor(),
                    UIColor.grayColor()]
    
    // func randomColor() -> UIColor 
    
    func randomColor() -> UIColor {
        let randomIndex = Int(arc4random()) % colors.count
        
        // Get a color from the colors array using the rando number as an index
        return colors[randomIndex]
        
    }
    
    // Implement delegate shouldChangeChatactersInRange
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        // TODO: Set the color of your text here
        textField.textColor = self.randomColor()
        return true
    }
}
