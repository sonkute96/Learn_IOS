//: Playground - noun: a place where people can play

import UIKit

class StepPerson {
    var totalSteps:Int = 0 {
        willSet{
            print ( "total steps is \(newValue)") // newValue la gia tri cua totalSteps khi user thay doi
        }
        didSet{
            print (".... \(totalSteps - oldValue) steps")
        }
        
    }
}


var st = StepPerson()

st.totalSteps = 200

st.totalSteps = 360 // theo doi su thay doi value 


// newValue chi co the chay trong willSet 

// willSet : truoc khi gia tri thay doi hoac la gia tri chua  dc store
// oldValue chi co the chay trong didSet

// didSet : sau khi gia tri thay doi hoac la gia  tri duoc store

