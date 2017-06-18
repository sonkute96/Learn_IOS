//: Playground - noun: a place where people can play

import UIKit


// su dung enum de: khai bao mot tap hop gom cac phan tu co dinh va duoc liet ke san

// ban ko the them va bot so phan tu
enum Rank: Int{
    
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten // tu dong cap nhat value tho
    
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return
            String(self.rawValue)
        }
    }
}

//let ace = Rank.ace
//
//let aceRawValue = ace.rawValue
//
//let two = Rank.two
//
//let twoRawValue = two.rawValue
//
//
//if let convertedRank = Rank(rawValue: 3){
//    let threeDes = convertedRank.simpleDescription()
//}
//

enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}
//let hearts = Suit.hearts
//let heartsDescription = hearts.simpleDescription()


struct Card{
    var rank:Rank
    
    var suit:Suit
    
    func simpleDescription() -> String{
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())."
    }
}

let threeOfSpades = Card(rank: .three, suit: .spades) // threeOfSpades nhu la mot doi tuong cua Card

let threeOfSpadesDesc = threeOfSpades.simpleDescription()



