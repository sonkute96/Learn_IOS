//
//
//// example of a protocol with a single instance property
//
//
//protocol FullyNamed {
//    
//    var fullName: String {get}
//    
//    
//}
//
//struct Person: FullyNamed {
//   
//    var fullName: String {
//        
//        return "John"
//    }
//}
//
//class Starship: FullyNamed {
//    
//    var prefix: String? // nil hoac la co value
//    
//    var name: String
//    
//    init(prefix: String? = nil, name:String) {
//        self.prefix = prefix
//        self.name = name
//    }
//    
//    var fullName: String {
//        return (prefix != nil ? prefix! + " " : "")+name
//    }
//    
//    
//    
//}
//
//
//// --------- method requirements
//
//
//
//protocol SomeProtocol {
//    
//    static func someTypeMethod()
//}
//
//protocol RandomNumberGenerator {
//    
//    func random() -> Double
//}
//
//
//
//
//class LinearCongruentialGenerator : RandomNumberGenerator {
//    
//    var lastRandom = 42.0
//    
//    let m = 1223.232
//    
//    let a = 2232.1
//    
//    let c = 2564.6
//    
//    func random() -> Double {
//        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
//        return lastRandom / m
//    }
//}
//
//
//let generator = LinearCongruentialGenerator() // instance
//
//print(generator.random())
//
//print (generator.random())
//
//
//// vi sao 2 gia tri lai khac nhau
//
//// 1. voi lenh print generator.random() ban dau thi gia tri cua bien lastRandom thay doi
//
//// 2. voi lenh print generator.random() thu 2 thi no lay gia tri lastRandom thay doi nho lenh truoc de tinh lai

// --------------------------------


class Animal {
   
    var namePet: String
    
    var agePet: Int
    
    init(namePet:String,agePet:Int) {
        self.namePet = namePet
        self.agePet = agePet
    }
}


class Human {
    
    var name : String
    
    var age: Int
    init(name:String, age: Int) {
        self.name = name
        self.age = age
    }
}

// protocol la list cac chuc nang de ap dung cho nhieu doi tuong

// protocol de dang bao tri, tai su dung va mo rong 

protocol CanMakeSound {
    
    func canMakeSound ()
}
class Dog:Animal,CanMakeSound{
    
    func canMakeSound() {
        print ("go go")
    }
}

class Cat:Animal,CanMakeSound{
    
    func canMakeSound() {
        print("meo meo")
    }
    
}

extension Human:CanMakeSound {
    
    func canMakeSound() {
        print("Speech")
    }
}

class People: Human{
    
}

let hocsinh = People(name: "Son", age: 20)

hocsinh.canMakeSound()