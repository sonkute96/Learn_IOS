//: Playground - noun: a place where people can play

import UIKit

// create an enumeration


// have methods associated with them

// a block === java
enum Rank: Int{
    case ace = 1
    
    case two, three, four, five, six, seven,eight,nine,ten
    
    case jack,queen, king
    
    func simpleDescription() -> String {
        switch self { // self chinh enum do.
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        default:
            return String(self.rawValue)
        }
    }
}

//let ace = Rank.ace // enumeration -> name
//
//let aceRawValue = ace.rawValue //-> tra ve gia tri cua instance do

// write a function that compares two rank values by comparing their raw values


func compar() -> String {
    let ace = Rank.ace
    let six = Rank.six
    let valueOfSix = six.rawValue
    let valueOfAce = ace.rawValue
    
    if valueOfAce > valueOfSix {
        return "ace > three"
    }else{
        return "ace < three"
    }
    
}

compar()