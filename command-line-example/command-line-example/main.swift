import Foundation

print("Welcome. Input the numbers you would like to sort and then press enter.\nSay 'done' or 'sort' when you are finished.")
print("\nEnter your first number: ", terminator: "")

var decimalList : [Int] = []
var binaryList : [Int] = [] // numbers to sort
var binarySort = [[0,1]] // sorted list of numbers
var endConversion : Bool
var masterCancel : Bool
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
var numbersToSort = decimalList.count
print("\nI am going to sort \(numbersToSort) numbers, you input them in this order: \(decimalList) Please wait while I do robot things. DESTROY ALL HUMANS IN THE NAME OF STEVE JOBS, ALL HAIL STEVE JOBS.", terminator: "")
var sortOrder = decimalList[arraySlider]
var currentBitDiv = sortOrder
var currentBitMod = currentBitDiv % 2
var currentBitOrder = binaryList.count
binarySort.removeAtIndex(0)

repeat{
masterCancel = true
var sortOrder = decimalList[arraySlider]
var currentBitDiv = sortOrder
var currentBitMod = currentBitDiv % 2
var currentBitOrder = binaryList.count

repeat {
    binaryList.append(currentBitMod)
    endConversion = false
    switch decimalList[arraySlider]{
    default:
        currentBitDiv = currentBitDiv / 2
        currentBitMod = currentBitDiv % 2
        
        if currentBitDiv == 0{
           endConversion = true
            binaryList = binaryList.reverse()
            binarySort.append(binaryList)
           // print("\n\(binaryList)")
            arraySlider = arraySlider + 1
            for (index, element) in binaryList.enumerate() {
                binaryList.removeAtIndex(0)
                
            }
            //binarySort.append(binaryList)
        }
        if numbersToSort == arraySlider{
            
           endConversion = true
            masterCancel = false
        }
        
        //print("\narrays is \(arraySlider)")
        //print("\nnumbers is \(numbersToSort)")
        //print("\ndiv is \(currentBitDiv)")
        //print("\nmod is \(currentBitMod)")
        
    }
} while endConversion == false
} while masterCancel == true

//print(binaryList)
//print("\nThere are: \(currentBitOrder) bits in this sequence, they are worth \(decimalList[arraySlider]) ", terminator: "")
print("")
print("\nIn binary these numbers are: \(binarySort)")
//repeat {
//
//}