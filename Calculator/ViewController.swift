//
//  ViewController.swift
//  Calculator
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    // Private variable is only accessible between curly braces of code block (current ViewController)
    private var isFinishedTypingNumber: Bool = true
    
    // What should happen when a non-number button is pressed
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert display label text to a Double")
            }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
       
    
        isFinishedTypingNumber = true
        
        // If value can't be converted to double then return fatalError
      
        
        // Functions to clear, convert to %, or invert value
        if let calcMethod = sender.currentTitle {
            if calcMethod == "+/-" {
                displayValue = displayValue * -1
            } else if calcMethod == "AC" {
                    displayLabel.text = "0"
            } else if calcMethod == "%" {
                displayValue = displayValue / 100
            }
        }
        
        }
    

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        
        // Display label to show values of button pressed
        if let numValue = sender.currentTitle {
            
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                
                // Prevent multiple decimals when user taps decimal
                if numValue == "." {
                    
                    let isInt = floor(displayValue) == displayValue
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        
    }

}

}
