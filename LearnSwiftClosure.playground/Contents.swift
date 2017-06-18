//: Playground - noun: a place where people can play

import UIKit


//// closure la mot khoi lenh dac biet gom co 0 hoac nhieu tham so va co the co kieu tra ve
////let studname = {
////    print("Welcome to Swift Closures")
////    
////}
////
////studname()
////
////
////// ------
////
//let divide: (Int, Int) -> Int  = {
//    
//    (val1: Int, val2: Int) -> Int in
//    return val1 / val2
//}
//
//let result = divide(10,4)
////print (result)
////
////func ascend (s1: String, s2: String) -> Bool{
////    return s1 > s2
////}
//
//
//
//var shortHand: (String, String) -> String
//shortHand = {
//    if $0 > $1 {
//        return $0
//    }
//    else{
//        return $1
//    }
//
//}
//print (shortHand("100","50"))
//
//func test_anonymousClosure() {
//    
//    var mySum: (Int, Int) -> (Int)
//    
//    mySum = {
//        return $0 + $1
//    }
//    
//    let value = mySum(1,2)
//    print(value)
//}
//
//test_anonymousClosure()


// --------- sap xep
//
//let numb = [98,-20,-30,42,18,35]
//
//var sortedNumb = numb.sorted({
//    (left: Int, right: Int) -> Bool in
//    return left < right
//})

//var sortNumber = numb.sorted {$0 > $1}
//
//print (sortNumber)
//
//
//let name = ["cho","meo","ga","vit"]
//
//var sortName = name.sorted{ $0 < $1}
//
//print (sortName)
//

// -------------- khai bao 1 closure

// no nhu 1 khoi lenh trong java hoac C


let myVal: (Int, Int) -> (Int) = {
    (a :Int, b : Int) -> (Int) in
    return a + b
}


var result = myVal (10, 5)
