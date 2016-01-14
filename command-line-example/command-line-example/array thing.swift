//
//  array thing.swift
//  command-line-example
//
//  Created by Tommy Davies on 2016-01-13.
//  Copyright © 2016 Royal St. George's College. All rights reserved.
//

import Foundation

print("Welcome.")

print("\nEnter your first number: ", terminator: "")

var firstnumber = readLine(stripNewline: true)

if let number1 = firstnumber {
    print("\nEnter another number: ", terminator: "")
    
    var secondnumber = readLine(stripNewline: true)
    
    if let number2 = secondnumber {
        print("\nEnter another number: ", terminator: "")
        
        var thirdnumber = readLine(stripNewline: true)
        
        if let number3 = thirdnumber {
            print("\nYour numbers were \(number1), \(number2) and \(number3). Please wait while I do robot things, beep boop destroy all humans click whirr...")
        }
    }
}
