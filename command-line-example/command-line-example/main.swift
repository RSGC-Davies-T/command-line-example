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
var currentBitMod = currentBitDiv % 2
repeat {
    binaryList.append(currentBitMod)
    endConversion = false
    switch decimalList[arraySlider]{
    default:
        currentBitDiv = currentBitDiv / 2
        currentBitMod = currentBitDiv % 2
        
        if currentBitDiv == 0{
            //binaryList.append(currentBitMod)
            endConversion = true
        }
        print("\ndiv is\(currentBitDiv)")
        print("\nmod is\(currentBitMod)")
        
    }
} while endConversion == false

binaryList = binaryList.reverse()
print(binaryList)

