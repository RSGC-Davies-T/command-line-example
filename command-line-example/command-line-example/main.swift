import Foundation

print("Welcome to 'SORT OF SORT-O-TRON'®! If you actually want things sorted then maybe you shouldn't be here! Don't trust a sixteen year old with anything, and remember there's ALWAYS MONEY IN THE BANNANA STAND. Input the numbers you would like to sort and then press enter.\nSay 'done' or 'sort' when you are finished.")
print("\nEnter your first number: ", terminator: "")

//Array that stores the base ten digits the user inputted
var decimalList : [Int] = []
//Array that stores the temporary binary number sequences before it is appended and then wiped
var binaryList : [Int] = []
//The most important array, it stores all of the binary sequence arrays, it is a multidimentional array, hence the precursor to the shorthand syntax
var binarySort = [[0,1]]
//Simple variable that takes user iput and converts it into a string, prevents writing readLine statements everytime
var userInput : String = readLine()!
//Moves the order of binary conversion along, going to the next base ten digit
var arraySlider : Int = 0
//simple boolean logic variables that cancel repeat loops
var endConversion : Bool
var masterCancel : Bool
var endLoop : Bool
var endSort : Bool
var endSecondarySort : Bool
var endTertiarySort : Bool
var cancelAction : Bool
//simple variables that prevent writing out longer statements
var sortSlider = 0
var lastCount = 0
var nowCount = 0
var currentHigh = 0
var lastHigh = 1
var currentLow = 0
var lastLow = 0

//user input sequence, takes numbers that the user inputs
repeat {
    //if this turns true the next sequence will inititate
    endLoop = false
    switch userInput {
        //cancel option
    case "done", "Done", "DONE", "sort", "Sort", "SORT":
        endLoop = true
        //don't even look at this it's just not worth either of our times
    case "commit sudoku":
        print("\nPLS SENPAI Y U DO DIS TO ME ", terminator: "")
    case "papau franku":
        print("\nCHEF?", terminator: "")
        
    default:
        // attempt to convert the input to an integer
        if let number = Int(userInput) {
            //adds the input to the array, but only integer inputs are accepted
            decimalList.append(number)
            //prompts for another number
            print("\nEnter enter another number or sort: ", terminator: "")
            userInput = readLine()!
        } else {
            //invalid input safety net
            print("\nInvalid Input ", terminator: "")
            print("\nEnter enter a real number or sort: ", terminator: "")
            userInput = readLine()!
        }
    }
    
} while endLoop == false
var numbersToSort = decimalList.count
//spits out what you gave it in order
print("\nI am going to sort \(numbersToSort) numbers, you input them in this order: \(decimalList) Please wait while I do robot things. DESTROY ALL HUMANS IN THE NAME OF STEVE JOBS, ALL HAIL STEVE JOBS.", terminator: "")
var sortOrder = decimalList[arraySlider]
var currentBitDiv = sortOrder
var currentBitMod = currentBitDiv % 2
var currentBitOrder = binaryList.count
binarySort.removeAtIndex(0)
//binary conversion loop
repeat{
    masterCancel = true
    // setting up the variables that simplify the code
    var sortOrder = decimalList[arraySlider]
    var currentBitDiv = sortOrder
    var currentBitMod = currentBitDiv % 2
    var currentBitOrder = binaryList.count
    //divide by two esque algorithm
    repeat {
        binaryList.append(currentBitMod)
        endConversion = false
        switch decimalList[arraySlider]{
        default:
            currentBitDiv = currentBitDiv / 2
            currentBitMod = currentBitDiv % 2
            //when it finishes the conversion it sends moves to the next decimal number to convert, and wipes the old binary sequence array to simplify things
            if currentBitDiv == 0{
                endConversion = true
                binaryList = binaryList.reverse()
                binarySort.append(binaryList)
                print("\n\(binaryList)")
                arraySlider = arraySlider + 1
                for (index, element) in binaryList.enumerate() {
                    binaryList.removeAtIndex(0)
                    
                }
            }
            if numbersToSort == arraySlider{
                
                endConversion = true
                masterCancel = false
            }
            //kept for debug purposes, displays the conversion step by step and digit by digit
            //            print("\narrays is \(arraySlider)")
            //            print("\nnumbers is \(numbersToSort)")
            //            print("\ndiv is \(currentBitDiv)")
            //            print("\nmod is \(currentBitMod)")
            
        }
    } while endConversion == false
} while masterCancel == true
//kept for debug purposes, proves the counting bit systems functionality, rules out other possible errors
//print(binaryList)
//print("\nThere are: \(currentBitOrder) bits in this sequence, they are worth \(decimalList[arraySlider]) ", terminator: "")
print("")
print("\nIn binary these numbers are: \(binarySort)")

var sortList = binarySort.count
//shorthand syntax for creating multidimensional arrays
var highNumbers = [[0,1]]
var lowNumbers = [[0,1]]
highNumbers.removeAtIndex(0)
lowNumbers.removeAtIndex(0)
//adds the first sequence to the most appropriate array (by subjective standards)
if binarySort[sortSlider].count > 5 {
    highNumbers.append(binarySort[sortSlider])
} else {
    lowNumbers.append(binarySort[sortSlider])
}
sortSlider = sortSlider + 1
//Primary sorting sequence, compares each binary sequence length ands adds it to high or low arrays
repeat {
    endSort = false
    switch binarySort{
    default:
        nowCount = binarySort[sortSlider].count
        lastCount = binarySort[sortSlider-1].count
        if nowCount > lastCount{
            highNumbers.append(binarySort[sortSlider])
            lastHigh = lastHigh + 1
            sortSlider = sortSlider + 1
        }
        if nowCount < lastCount {
            lowNumbers.append(binarySort[sortSlider])
            lastLow = lastLow + 1
            sortSlider = sortSlider + 1
        }
        if nowCount == lastCount {
            highNumbers.append(binarySort[sortSlider-1])
            sortSlider = sortSlider + 1
        }
        if sortSlider == sortList{
            endSort = true
        }
        nowCount = lastCount
        
    }
} while endSort == false
print("\nFinal high is: \(highNumbers)")
print("\nFinal low is: \(lowNumbers)")
var high1 = [[0,1]]
var high2 = [[0,1]]
var low1 = [[0,1]]
var low2 = [[0,1]]
high1.removeAtIndex(0)
high2.removeAtIndex(0)
low1.removeAtIndex(0)
low2.removeAtIndex(0)
sortSlider = 1
nowCount = 0
var highList = highNumbers.count

//repeat {
//    nowCount = highNumbers[sortSlider].count
//    lastCount = highNumbers[sortSlider-1].count
//    endSort = false
//    switch highNumbers{
//    default:
//        if sortSlider == highList{
//            endSort = true
//        }
//        
//        if nowCount > lastCount{
//            high1.append(highNumbers[sortSlider])
//            lastHigh = lastHigh + 1
//            sortSlider = sortSlider + 1
//        }
//        if nowCount < lastCount {
//            high2.append(highNumbers[sortSlider])
//            lastLow = lastLow + 1
//            sortSlider = sortSlider + 1
//        }
//        if nowCount == lastCount {
//            high1.append(highNumbers[sortSlider-1])
//            sortSlider = sortSlider + 1
//        }
//       
//        nowCount = lastCount
//    }
//}while endSort == false
//
//sortSlider = 1
//nowCount = 0
//var lowList = lowNumbers.count
//
//repeat {
//    nowCount = lowNumbers[sortSlider].count
//    lastCount = lowNumbers[sortSlider-1].count
//    endSort = false
//    switch lowNumbers{
//    default:
//        if sortSlider == lowList{
//            endSort = true
//        }
//        
//        if nowCount > lastCount{
//            low1.append(lowNumbers[sortSlider])
//            lastHigh = lastHigh + 1
//            sortSlider = sortSlider + 1
//        }
//        if nowCount < lastCount {
//            low2.append(lowNumbers[sortSlider])
//            lastLow = lastLow + 1
//            sortSlider = sortSlider + 1
//        }
//        if nowCount == lastCount {
//            low1.append(lowNumbers[sortSlider-1])
//            sortSlider = sortSlider + 1
//        }
//        
//        nowCount = lastCount
//    }
//}while endSort == false
//print("\nHigh 1 is: \(high1)")
//print("\nHigh 2 is: \(high2)")
//
//print("\nLow 1 is: \(low1)")
//print("\nLow 2 is: \(low2)")
