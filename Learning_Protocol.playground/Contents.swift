//: Playground - noun: a place where people can play

import UIKit

// use protocol to declare a protocol

//class Square{
//    // thuoc tinh
//    
//    var length: Int = 1
//    
//    // constructor
//    init(length:Int) {
//        self.length = length
//    }
//    
//    // function
//    
//    func area() ->Int{
//        return length * length
//    }
//}
//
//
//
//var firstSquare = Square(length: 3)
//
//// firstSquare la mot instance or object cua class square
//
//print(firstSquare.length)
//
//// tinh area cua firstSquare
//
//print ("dien tich cua first square : \(firstSquare.area())")
//
//// the second instance
//
//var secondSquare = Square(length: 10)
//
//print(secondSquare.length)



// --------------- 


// use properties to store constants and variables by instance of a class and structure

// ----- inheritance


//class AClass {
//    func doSomething(){
//        print ("hello world")
//    }
//}
//
//class subClass:AClass {
//    override func doSomething() {
//        super.doSomething() // goi den func of superclass and execute
//        print("hello form subclass")
//    }
//}
//
//
//let base_object = AClass()
//
//base_object.doSomething()
//
//let enhanced_obj = subClass()
//
//
//enhanced_obj.doSomething()
//
//
//
//
 // --------- base class

//
//class User{
//    
//    // class thuong ke thua tu NSObject
//    // class la nhung subclass cua NSObject
//    
//    
//    var name:String!
//    
//    var age:Int!
//    
//    init(name:String,age:Int) {
//        self.name = name
//        self.age = age
//    }
//}
//

// protocol tuong tu nhu instance trong java




protocol Targetable{
    // thuoc tinh
    
    var life: Int { get set }
    
    func takeDamage(damage:Int)
}


protocol Shootable{
    func shoot(target:Targetable)
}


class Pistol:Shootable {
    func shoot(target: Targetable) {
        // target co kieu du lieu la Targetable
        target.takeDamage(damage: 1)
    }
    
}

class Shotgun:Shootable{
    func shoot(target: Targetable) {
        target.takeDamage(damage: 5)
    }
}


class Enemy:Targetable {
    func takeDamage(damage: Int) {
        life -= damage
        
        if life <= 0{
            print ("enemy is dead now")
        }
    }

    
    // Enemy ke thua protocol Targetable
    var life: Int = 10
    
    
    
}


class Player {
    var weapon: Shootable!
    
    init(weapon:Shootable) {
        self.weapon = weapon
    }
    
    func shoot(target:Targetable){
        weapon.shoot(target: target)
    }
}


var terminator = Player(weapon: Pistol())

terminator.shoot(target: Enemy())