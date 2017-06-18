//: Playground - noun: a place where people can play

import UIKit

var stringA = "Hello, Swift!"

print(stringA)


var stringB:String? = String("Hello, Swift!") // khai bao theo kieu tuong minh, lam chuong trinh hieu va chay nhanh hon

// ko co dau ? thi bien do co gia tri binh thuong nhu da cho

// neu co dau ? thi khi do neu chung ta ko dat cho no gia tri thi no tu hieu la gia tri no bang nil

// khi dat dau ? nen mang lai su nghi ngo nil hay bang gia tri da cho nen gia tri cua no la optional



print (stringB!)



// kiem tra chuoi co rong hay ko??


if stringB!.isEmpty {
    print ("chuoi b rong")
}
else{
    print ("chuoi b ko rong")
}


// so sanh giua 2 chuoi

var str1:String? = String("hello ")

print (str1)

var str2 = "hello"

print (str2)

if str1 == str2 {
    print ("bang nhau")
}else{
    print ("khong bang nhau")
}

// ham hasPrefix

if str1!.hasPrefix("he"){
    print ("true")
}
else{
    print ("false")
}


// neu chuoi

str1!.append( str2 )


