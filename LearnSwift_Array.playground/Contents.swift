//: Playground - noun: a place where people can play

import UIKit


var arr_tenSinhVien:[String] = ["son", "minh", "teo", "ti"]; // khai bao tuong minh nhu nay lam cho chuong trinh chay nhanh hon.


print (arr_tenSinhVien[3])


var someVar = [Int]()


someVar.append(20)

someVar.append(30)

someVar.append(40)

arr_tenSinhVien.count;

for item in arr_tenSinhVien {
    print (item)
}



// we can create array with any type

var mixData = [1, "Carl"] as [Any];


arr_tenSinhVien.isEmpty // false







// -------- dictionary

var someDict: [Int:String] = [1: "One", 2: "Two", 3 : "Three"]


//var oldVal = someDict.updateValue("new value of one", forKey: 1)
//
//
//someDict.removeValue(forKey: 2)



for (key,value) in someDict {
    print ("key \(key) - value = \(value)")
}





var ourData: Dictionary<String,String> = ["Key":"Value"];

ourData["Key"]; // get value into Dictionary

ourData.count



























