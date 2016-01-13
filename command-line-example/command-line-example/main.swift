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


// Ask about food preferences
//var validInput : Bool          // Status of input
//repeat {
//    
////    // Show prompts
////    print("\nWhat is your favourite food category?")
////    print("A - Cereal")
////    print("B - Fruit")
////    print("C - Vegetables")
////    print("Select your favourite (A/B/C/Quit): ", terminator: "")
//    
////    // Get the user's input
////    var givenFoodPreference = readLine(stripNewline: true)
////    
////    // Assume valid input
////    validInput = true
////    
////    // Interpret the result, if one was given
////    if let foodPreference = givenFoodPreference {
////        
////        // Add a blank line to separate response from input block
////        print("")
////        
////        switch foodPreference {
////            
////        case "A", "a":
////            print("Awesome, I love Cheerios!")
////            
////        case "B", "b":
////            print("My favourite is mango.")
////            
////        case "C", "c":
////            print("Have you tried baked eggplant? Delectable!")
////            
////        case "Quit", "QUIT", "quit":
////            print("Bye.")
////            
////        default:
////            print("Sorry, I didn't get that.")
//////            validInput = false
////        }
////        
////    }
////    
//} while validInput == false

// Print one additional blank line to separate from exit code message that is automatically displayed
print("")
