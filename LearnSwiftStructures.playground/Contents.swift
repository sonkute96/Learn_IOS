//: Playground - noun: a place where people can play

import UIKit

//struct student {
//    var diemToan: Int
//    
//    var diemVan: Int
//    
//    init(diemToan: Int, diemVan: Int) {
//        self.diemToan = diemToan
//        self.diemVan = diemVan
//    }
//}
//
//let student1 = student(diemToan: 10, diemVan: 9)
//
//print (student1.diemToan)
//
//print (student1.diemVan)
//


// --------- so sanh su khac nhau giua struct va class


class MyClass{
    var name:String = "Hello world";
}

struct MyStruct{
    var name:String = "Hello world";
}

func getName(myClass:MyClass, myStruct:MyStruct){
    
    
    // test voi class
    
    myClass.name = "Hi Son";
   // myStruct.name = "hello son" // mystruct is a let constant // not change
    
    
    /* ---- voi class thi khi thuc hien mot phuong thuc thi class duoc truyen voi vi the la 1 tham chieu
      ----- voi struct khi thuc hien mot phuong thuc thi struct duoc truyen voi vi the la 1 gia tri (constant)
     
     */
    print (myClass.name)
    print (myStruct.name)
}

var myclass = MyClass();

var mystruct = MyStruct();

getName(myClass: myclass, myStruct: mystruct)