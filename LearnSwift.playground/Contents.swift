//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// type aliases

// typealias newname = type

// dat ten gia cho mot kieu du lieu co san


typealias Feet = Int

var distance:Feet = 100 // Feet tuong trung cho Int, bien distance la bien kieu so nguyen Int

print(distance)



// type safe

var varA = 42 // varA la mot bien kieu so nguyen

//varA = "Hello world" // nhung lan nay varA lai duoc gan bang 1 chuoi

print (varA) // loi khi khai bao nhu vay


// ------- type inference

// -- swift se kieu tra gia tri ma ban cung cap de co the xac dinh duoc kieu du lieu cua bien do.

var varB = 3.14159

print (varB)

var varC = 3 + 0.14159

print (varC)


// cach gan bien với ! and ?

var myString:String? // tu dong no se hieu la myString co gia tri la nil

print (myString)


var chuoi:String? = String("hello world") // khi khai bao theo kieu tuong minh co dau ? nhu the nay thi se lam cho chuong trinh chay nhanh hon, nhung no hieu bien do la optional

print (chuoi!) // de lay gia tri trong optional thi ta them dau ! vao cuoi bien


// khai bao hang (constant)

// ta su dung tu khoa let

let chuoi2:String = String("toi ten la Son")

print(chuoi2)

let consB:Float = 3.14159

print ("gia tri cua hang so B la : \(consB)")





