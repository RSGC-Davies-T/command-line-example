import Foundation

print("Welcome. Input the numbers you would like to sort and then press enter.\nSay 'done' or 'sort' when you are finished.")
print("\nEnter your first number: ", terminator: "")

var decimalList : [Int] = []
var binaryList : [Int] = []
var endConversion : Bool
var endLoop : Bool
var userInput : String = readLine()!
var arraySlider : Int = 0

repeat {
    
    endLoop = false
    
    switch userInput {
        
    case "done", "Done", "DONE", "sort", "Sort", "SORT":
        endLoop = true
        
    case "commit sudoku":
        print("\nPLS SENPAI Y U DO DIS TO ME ", terminator: "")
    case "papau franku":
        print("\nCHEF?", terminator: "")
        
    default:
        // attempt to convert the input to an integer
        if let number = Int(userInput) {
            decimalList.append(number)
            print("\nEnter enter another number or sort: ", terminator: "")
            userInput = readLine()!
        } else {
            print("\nInvalid Input ", terminator: "")
            print("\nEnter enter a real number or sort: ", terminator: "")
            userInput = readLine()!
        }
    }
    
} while endLoop == false

print("\nI am going to sort \(decimalList.count) numbers, you input them in this order: \(decimalList) Please wait while I do robot things. DESTROY ALL HUMANS IN THE NAME OF STEVE JOBS, ALL HAIL STEVE JOBS.", terminator: "")
var sortOrder = decimalList[arraySlider]
var currentBitDiv = sortOrder

repeat {
    endConversion = false
    switch decimalList[arraySlider]{
    default:
        currentBitDiv = currentBitDiv / 2
        if currentBitDiv == 0 {
            endConversion = true
        }
        // binaryList.append(currentBit2)
        // print(binaryList)
        print("\narraySlider is \(sortOrder)")
        print(currentBitDiv)
        //print(currentBit2)
        
    }
} while endConversion == false


print(decimalList)









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
