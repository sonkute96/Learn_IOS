//: Playground - noun: a place where people can play

import UIKit


class NamedShape {
    var numberOfSides:Int = 0
    
    var name: String
    
    init(name:String) {
        self.name = name // self tuong trung nhu this trong java va c++
        }
    
    func simpleDescription() -> String { // tra ve kieu string
        return "A shape\(name) with \(numberOfSides) sides"
    }
}

//var r = NamedShape(name:" Square")

//print (r.simpleDescription())

class Square: NamedShape {
    var sideLength:Double
    
    init(sideLength:Double,name:String) {
        self.sideLength = sideLength
        super.init(name: name) // tinh ke thua
        numberOfSides = 4
        
        
        
    }
     // function area
    
    func area() -> Double{
        return sideLength * sideLength
    }
    
    // ghi de pt cua class cha.
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
    
}

//
//let test = Square(sideLength: 5.2, name: "My test square")
//
//print(test.area())
//print(test.simpleDescription())


class EquilateralTriangle: NamedShape{
    var sideLength:Double = 0.0
    
    init(sideLength:Double,name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    var permeter:Double {
        get{
            return 3.0 * sideLength
        }
        set{
            sideLength = newValue / 3.0
        }
        
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length\(sideLength)."
    }
}

// test
//
//var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
//
//print(triangle.permeter)
//
//triangle.permeter = 9.9
//
//print (triangle.sideLength)

// ---- willSet and didSet la cac property observers  --- > theo doi su thay doi value

