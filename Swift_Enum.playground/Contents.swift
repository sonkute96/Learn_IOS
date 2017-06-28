//: Playground - noun: a place where people can play

import UIKit

// su dung tu khoa enum de khai tao enumeration

// giong nhu cac lop va tat ca loai dat ten khac enum co the co cac phuong thuc lien qua den no


// -------- example

//enum Rank: Int{
//    // khai bao mot Rank voi kieu la Int
//
//    case ace = 1
//
//    case two, three, four, five, six,seven,eight,nine,ten
//
//    case jack, queen, king
//
//    // khai bao function
//
//    func simpleDescription () -> String {
//
//        // kieu tra ve cua func la String
//
//        switch self { // self la chinh cai Rank
//
//        case .ace: // truong hop Rank == ace
//
//            return "ace"
//
//
//        case .jack:
//
//            return "jack"
//
//        case .king:
//            return "king"
//
//        default:
//            return String(self.rawValue)
//
//        }
//    }
//}
//
//
//let five = Rank.five
//
//let aceRawValue = five.rawValue
//
//if let convertedRank = Rank(rawValue: 0){
//    let threeDescription = convertedRank.simpleDescription()
//
//}


// ---------- example 2

enum Suit:String {
    case spades, hearts, diamonds, clubs
    
    func simpleDescription() ->String{
        
        switch self {
        case .spades:
            return "Spades"
            
        case .hearts:
            return "hearts"
            
        case .diamonds:
            return "diamonds"
            
        case .clubs:
            return "clubs"
            
            
        }
    }
    
    func fillColor() -> String {
        switch self {
        case .spades,.clubs:
            return "black"
        case .diamonds,.hearts:
            return "red"
            
        }
    }
}
let hearts = Suit.hearts

let heartsColor = hearts.fillColor()





