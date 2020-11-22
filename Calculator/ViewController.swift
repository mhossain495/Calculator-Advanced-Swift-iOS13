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
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
       
    
        isFinishedTypingNumber = true
        
        // If value can't be converted to double then return fatalError
      
        
        // Functions to clear, convert to %, or invert value
        if let calcMethod = sender.currentTitle {
            if calcMethod == "+/-" {
                displayLabel.text = String(number * -1)
            } else if calcMethod == "AC" {
                    displayLabel.text = "0"
            } else if calcMethod == "%" {
                displayLabel.text = String(number / 100)
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
                    guard let currentDisplayValue = Double(displayLabel.text!) else {
                        fatalError("cannot convert display label text to a Double!")
                    }
                    let isInt = floor(currentDisplayValue) == currentDisplayValue
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        
    }

}

}
