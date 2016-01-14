import Foundation

print("Welcome. Input the numbers you would like to sort and then press enter.\nSay 'done' when you are finished.")
print("\nEnter your first number: ", terminator: "")

var numberList : [Int] = []
var validInput : Bool
var endLoop : Bool
var userInput : String = readLine()!

//let emptyArray : [Int] = []
repeat {
    
    endLoop = false
    
    switch userInput {
        
        case "done", "Done", "DONE":
            endLoop = true
        case "commit sudoku":
            print("\nPLS SENPAI Y U DO DIS TO ME ", terminator: "")
        case "papau franku":
            print("\nCHEF?", terminator: "")
        default:
            // attempt to convert the input to an integer
            if let number = Int(userInput) {
              numberList.append(number)
              print("\nEnter enter another number: ", terminator: "")
                userInput = readLine()!
            } else {
                print("\nInvalid Input ", terminator: "")
                print("\nEnter enter a real number: ", terminator: "")
                userInput = readLine()!
                
            }
        

    }
    
} while endLoop == false

print("\nI am going to sort \(numberList.count) numbers, you input them in this order: \(numberList) Please wait while I do robot things. DESTROY ALL HUMANS IN THE NAME OF STEVE JOBS, ALL HAIL STEVE JOBS.", terminator: "")




//var firstnumber = readLine(stripNewline: true)
//if let number1 = firstnumber {
//    print("\nEnter another number: ", terminator: "")
//
//var secondnumber = readLine(stripNewline: true)
//
//if let number2 = secondnumber {
//    print("\nEnter another number: ", terminator: "")
//
//var thirdnumber = readLine(stripNewline: true)
//
//if let number3 = thirdnumber {
//    print("\nYour numbers were \(number1), \(number2) and \(number3). Please wait while I do robot things, beep boop destroy all humans click whirr...")
// Ask about food preferences
//var validInput : Bool          // Status of input
//repeat {
//
//    // Show prompts
//    print("\nWhat is your favourite food category?")
//    print("A - Cereal")
//    print("B - Fruit")
//    print("C - Vegetables")
//    print("Select your favourite (A/B/C/Quit): ", terminator: "")

//    // Get the user's input
//    var givenFoodPreference = readLine(stripNewline: true)
//
//    // Assume valid input
//    validInput = true
//
//    // Interpret the result, if one was given
//    if let foodPreference = givenFoodPreference {
//
//        // Add a blank line to separate response from input block
//        print("")
//
//        switch foodPreference {
//
//        case "A", "a":
//            print("Awesome, I love Cheerios!")
//
//        case "B", "b":
//            print("My favourite is mango.")
//
//        case "C", "c":
//            print("Have you tried baked eggplant? Delectable!")
//
//        case "Quit", "QUIT", "quit":
//            print("Bye.")
//
//        default:
//            print("Sorry, I didn't get that.")
////            validInput = false
//        }
//   }
//
//} while validInput == false

// Print one additional blank line to separate from exit code message that is automatically displayed
print("")
