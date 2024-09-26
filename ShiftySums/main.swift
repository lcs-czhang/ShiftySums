//
//  main.swift
//  ShiftySums
//
//  Created by Yuzhou Zhang on 2024-09-26.
//

import Foundation

func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
    
    // Loop until a valid value is provided
    while true {
        
        // Prompt the user
        if prompt != "" {
            print(prompt)
        }
        
        // Collect the input
        guard let givenInput = readLine() else {
            continue
        }
        
        // Convert to an integer
        guard let givenInteger = Int(givenInput) else {
            continue
        }
        
        // If a lowest value for the integer was specified...
        if let minimumValue = minimum {
            
            // ... then check that the given integer is greater than or equal to the lowest desired value.
            guard givenInteger >= minimumValue else {
                continue
            }
            
        }
        
        // If an highest possible value for the integer was specified...
        if let maximumValue = maximum {
            
            // ... then check that the given integer is less than or equal to the highest desired value.
            guard givenInteger <= maximumValue else {
                continue
            }
            
            
        }
        
        // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
        return givenInteger
        
    }
    
}
func shiftTheNumber(number: Int, shift: Int) -> Int {
    var result = 0
    for _ in 0...shift {
        result = result * 10 + number
    }
    return result
}
print(shiftTheNumber(number: getInput(withPrompt: "", minimum: 1, maximum: 10000), shift: getInput(withPrompt: "", minimum: 0, maximum: 5)))
