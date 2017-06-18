//: Playground - noun: a place where people can play

import UIKit

//func large_small(array :[Int]) -> (large : Int, small : Int){
//    var lar = array[0]
//    
//    var sma = array[0]
//    
//    for i in array[1..<array.count]{
//        if i < sma{
//            sma = i
//        }
//        else if i > lar {
//            lar = i
//        }
//    }
//    return (lar,sma)
//}
//
//
//let num = large_small(array : [40,12,-5,78,98])
//
//print (" min = \(num.small)")
//
//print (" max = \(num.large)")

// ham tinh tong

//
//func sum (a : Int, b : Int) -> Int {
//    return a + b
//}
//
//
// //---- Closure: la mot bao dong', la mot khoi lenh dac biet no co the co 0 hoac nhieu tham so va co kieu tra ve
//
//var addition: (Int, Int) -> Int // addition la mot closure khoi lenh co 2 tham so va kieu tra ve Int
//
////print ("Result : \(addition(40,20))" )
//
//func another(addition: (Int,Int) -> Int, a: Int, b: Int) // khai bao 1 ham gom 3 tham chieu
//{
//    print ("Result : \(addition(a,b))")
//}
//
//another(addition: sum,a: 10,b: 20)
//
//
//

// ----- hoan vi


func hoanvi(a1: inout Int, a2: inout Int){
    let t = a1
    a1 = a2
    a2 = t
}

var no = 2

var co = 10

hoanvi(a1: &co, a2: &no)

print (co)
print (no)

//



func printSomething(message:String){
    print(message)
}

printSomething(message: "This is our custom message")



// return function

func printSomething() -> String {
    return "Some message"
}

print(printSomething())


func calculateSum(num1:Int, num2:Int)-> Int{
    // mac dinh parameter la let (constant)
    
    // muon thay doi gia tri parameter thi fai khai bao 1 bien moi gan bang no va thay doi de su dung
    return num1 + num2
}


print(calculateSum(num1: 40, num2: 50))




















