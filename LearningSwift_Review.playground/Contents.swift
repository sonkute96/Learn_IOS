//: Playground - noun: a place where people can play

import UIKit

// in chuoi ra man hinh

print ("Hello world")

// -- simple values

// -- khai bao bien

var myVariable = 42

myVariable = 50

// -- khai bao hang so

let myConstant = 42

//myConstant = 50 // sai vi myConstant la hang so nen ko the thay doi


// --- create a constant with type of Float and a value of 4

let exConstant:Float = 4

// -- convert a value to a different type 

let lable = " The Width is "

let widthLable = lable + String(exConstant)


// ---- su dung "\"

let apples = 3

let oranges = 5

let appleSummary = " I have \(apples) apples"

let fruitSummary = " I have \(apples) apples and \(oranges) oranges"


var numberA:Float = 5

var numberB:Float = 3

print ("The result is : \(numberA/numberB)")


// ----- tao mot array hoac 1 dictionary bang using brackets []

// access their elements by writing the index or key in brackets.


var shoppingList = ["catfish","water","tulips","blue", "paint"] // array

// -- access their elements (array)

shoppingList[1] = "bottle of water" // change their value

var occupations = ["Malcolm" : "Captain", "Kaylee":"Mechanic"] // dictionary

// -- access their elements (dictionary)

occupations["Jayne"] = "Public Relation" // add a new element into dictionary


// ---- create an empty array or dictionary

let myEmptyArray = [String] () // new empty array have a type of String

let emptyDictionary = [String:Float]() // new dictionary have a key is String and value is Float


// In the other hand you can create a new array or dictionary by the other way

shoppingList = [] //  shoppingList is empty



// ----------- control flow


let indivitualScores = [75,43,103,87,12] // create a new array with some values


var large = 0 // create a new variable which equals 0

var small = 0

for score in indivitualScores {
    
    // check each values into indivitualScores
    
    if score > 50 // if score greater than 50
    {
        large += 1
    }else{
        small += 1
    }
    
}

// print results

print (large)

print (small)



/// ----- 

var optionalString: String? = "Hello" // ? kiem tra xem co bang nil hay ko (kqua cua no la 1 optional)

print(optionalString == nil) // == toan tu kiem tra equals and return type of boolean

var optionalName: String?

//print (optionalString!) // pha vo optional bang cach su dung !

//if (optionalName! == nil){
//    optionalName = "Hello world"
//    print (optionalName!)
//}else{
//    print ("it is not empty")
//}


let vegetable = "red pepper"

switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print ("That would make a good tee sanwich.")
case let x where
    x.hasSuffix("pepper"): // x la 1 bien ma neu vegetable chua pepper suffix
    print("is it a spicy")
    
    // if without default, if vegetable run into a other values compare to some values into case
    
    // machines will not understand to run
default:
    print("Everything tastes good in soup")
}




// ------- practise with dictionary

let interestingNumbers = ["Prime": [2,3,5,7,11,60], "Fibonacci":[1,1,2,3,5,8],"Square":[1,4,9,16,25],]


var largest = 0
var name = ""

for (kind, numbers) in interestingNumbers {
    // duyet key la kind va value la numbers trong dictionary
    for number in numbers {
        // duyet tung phan tu trong mang ca value
        
        if number > largest {
            largest = number
            name = kind
            
        }
    }
}
print ("kind have a largest value : \(name) and max value :\(largest)")




// ---- use while loop


var n = 2

while n < 100 {
    n *= 2
}

print (n)


var m = 3

repeat {
    // use repeat .. while  block 
    // different with do .. while by C/C++, java
    
    m *= 2
    
} while m < 100
print (m)



// -------- Functions and Closures

// -- use func to declare a function, call a function by following its name with a list of arguments.

// - use -> to separate the parameter names and types from the function's return type


func greet(person:String, day:String) -> String {
    // 2 tham so person va day 
    // func tra ve kieu String
    return "Hello \(person), today is \(day)"
}

// call a func
//print(greet(person: "Son", day: "thu 7"))

// use argument lable by write _
func greet2(_ person: String, on day: String) ->String{
    return "Hello \(person), today is \(day)."
    
}

print(greet2("John", on: "Monday"))


// ----- 
func calculateStatistics(scores:[Int]) ->(min:Int, max:Int,sum:Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        }
        else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min,max,sum)
    
}

let statistics = calculateStatistics(scores: [5,3,100,3,9])

print (statistics.sum)

print(statistics.1) // .0.1.2 la access toi thu tu cua tung parameter


// --- 

func sumOf(numbers : Int...) -> Int{
    var sum = 0
    
    for number in numbers {
        sum += number
    }
    
    return sum
}


sumOf() // ko truyen gia tri nao thi sum = 0

sumOf(numbers: 42,597,12)


// -- write a function that calculates the average of its arguments

func average(arrayInput: [Int]) -> Float{
    var count = 0
    var sum = 0
    
    for number in arrayInput {
        count += 1
        sum += number
    }
    var ave:Float = Float(sum) / Float(count) // ep kieu 2 thong so sum va count thanh float
    return ave

}

average(arrayInput: [3,9,1,8])

// function can be nested

func returnFifteen() -> Int{
    var y = 10
    
    // add a new function
    
    func add (){
        y += 5
    
    }
    add()
    
    return y
}

returnFifteen()

// --- function can return the other function

func makeIncrementer() -> ((Int) -> Int){
    func addOne(number: Int) -> Int {
        
        return 1 + number
    }
    return addOne // return addOne function
}

var increment = makeIncrementer() // increment is instance for makeIn...

//makeIncrementer().(7)


increment(7)

// --- a function can take another function as one of its argument
func lessThanTen(a:Int) ->Bool {
    return a < 10 // return true if number less than 10
}
var numbersTemp = [20,19,7,12]


func hasAnyMatches (list: [Int], condition:(Int) -> Bool) -> Bool {
    // condition is alias name for a function
    
    for item in list {
        if condition(item){
            // if true
            
            return true
        }
        
    }
    return false
}

// call function

hasAnyMatches(list: numbersTemp, condition: lessThanTen)


numbersTemp.map({
    (number:Int) -> Int in
    let result = 3 * number
    return result
})


// ----- sorted method

let names = ["son", "minh", "teo", "ki"]


let arrayNums = [2,5,1,6,12,56,-123,-345]

func decre(_ str1:String,_ str2:String) -> Bool{
    return str1 > str2
}


func decreNum(_ num1:Int,_ num2:Int) -> Bool{
    return num1 < num2
}
var arraySorted = names.sorted(by:decre)

arrayNums.sorted(by: decreNum)


// -- user closures

var reverArray = arrayNums.sorted(by: <)
print (reverArray)


// use map method to change a array with type of Int to type of String

let digitalString = [
    1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"

]

let arrayNum = [16,123,53]

let strings = arrayNum.map { (number) -> String in
    var number = number
    var output = ""
    
    while number > 0 {
        output = digitalString[number % 10]! + output
        number /= 10
    }
    
    return output
}

print (strings)