//: Playground - noun: a place where people can play

import UIKit

// define a super class

class Vehicle {
    
    var currentSpeed = 0.0 // property
    
    // declare property with get method
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    // declare method makeNoise()
    
    func makeNoise() {
        // method not return
        
    }
    
    // --- overloading
    
    func makeNoise(sound:String){
        
        print ("sound is : \(sound)")
    }
}

// declare instance of class

//let someVehicle = Vehicle()
//
//someVehicle.currentSpeed = 10.0
//someVehicle.currentSpeed
//someVehicle.description

// ---- declare subclassing

class Bicycle: Vehicle {
    
    var hasBasket = false // property with Boolean type
    
    // override
    
    override func makeNoise() {
        print ("tieng cua xich")
    }
    
    
}

class Motorbike: Vehicle{
    override func makeNoise() {
        print("tieng cua bo")
    }
    
    override func makeNoise(sound: String) {
        print("\(sound)")
    }
}

let bicycle = Bicycle() // bicycle la instance of Bicycle

bicycle.currentSpeed = 15.0

print ("Bicycle : \(bicycle.description)")


// ---

let motorbike = Motorbike()

motorbike.makeNoise(sound: "tieng cua bo cua func co tham so ")

motorbike.makeNoise()

// and bicycle is default constructor.


// -----

class Tandem: Bicycle { // Tandem is subclass of Bicycle
    
    var currentNumberOfPassengers = 0
    
    
}

// Tandem inherits all of the properties and methods from bicycle and Vehicle.

let tanDem = Tandem()

tanDem.hasBasket = true

tanDem.currentSpeed = 22.0

tanDem.currentNumberOfPassengers = 2

print ("Tandem : \(tanDem.description)")

class Car:Vehicle {
    var gear = 1
    
    override var description: String{
        // get
        return super.description + "in gear \(gear)"
        
        // super la super class
        // o super class thi currentspeed = 0
    }
    
}

class AutomaticCar: Car {
    
    
    // didSet o day co nghia la sau khi minh set gia tri cho currentSpeed thi no co the lam thao tac tinh gear.
    override var currentSpeed: Double {
        didSet{
        gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3

print ("Car : \(car.description)")

let automaticCar = AutomaticCar()
automaticCar.currentSpeed = 35.0

print ("AutomaticCar: \(automaticCar.description)")




class SurveyQuestion {
    
    let str: String
    
    var response: String?
    
    init(str: String ) {
        self.str = str
        
    }
    
    func ask () ->String{
        return str
    }
}


let ques = SurveyQuestion(str : "....How's it going?")

print(ques.ask())

ques.response = "... your answer"

print (ques.response!)


// struct is automatic memberwise stored properties
class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

let recipe = RecipeIngredient(name: "Hello")
recipe.name
recipe.quantity



