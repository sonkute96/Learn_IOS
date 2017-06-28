//: Playground - noun: a place where people can play

import UIKit


// su dung protocol de khai bao protocol

protocol ExampleProtocol {
    var simpleDescription: String {get}
    // mutating cho phep method do thay doi thuoc tinh noi tai cua struct va enum implements protocol do
    
    // rieng voi class thi khong can.
    
    
    mutating func adjust()
}

// lop hay enum hay struct co the implements protocol

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    
    
    var anotherProperty: Int = 692323
    func adjust() {
        simpleDescription += "Now 100% adjusted."
    }
    
    
}
struct SimpleClass_two: ExampleProtocol{
    
    var simpleDescription: String = "A very simple struct."
    
    mutating func adjust() {
        simpleDescription += "Hello world"
    }
}

var tow = SimpleClass_two()
tow.adjust()

print(tow.simpleDescription)




// ---------- example of extensions

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
    
}

print(7.simpleDescription)



extension Double: ExampleProtocol{
    var simpleDescription: String {
        return "The number \(self)" // self la Double do
        
    }
    
    mutating func adjust() {
        self += 42
    }
}

let protocolValue:ExampleProtocol = 5.5

print(protocolValue.simpleDescription)
