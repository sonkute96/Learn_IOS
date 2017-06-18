//: Playground - noun: a place where people can play

import UIKit

// khai bao 1 class Rectangle - Hinh chu nhat


class Rectangle{
    
    // khai bao va khoi tao mo thuoc tinh chieu rong
    
    var width:Int = 5
    
    // thuoc tinh chieu cao
    
    var height:Int = 10
    
    // tao constructor cho class ko co tham so (default constructor)
    
    init() {
        
    }
    
    // tao constructor cho class co 2 tham so truyen vao
    
    init(width:Int, height:Int) {
        self.width = width
        self.height = height
    }
    
    // mot ham tinh dien tich cua hinh chu nhat
    
    func getArea () -> Int{
        return self.width * self.height
    }
}


// su dung class Rectangle de tao ra cac doi tuong


func test_rectangle(){
    
    // func test hinh chu nhat
    
    print("Create a Rectangle :")
    
    // tao moi doi tuong rectangle
    
    // theo constructor ko co tham so
    
    var rec1 = Rectangle()
    
    // rec1 la doi tuong cua class Rectangle nen co the tham chieu den cac thuoc tinh hay phuong thuc cua class
    
    rec1.width = 10
    
    rec1.height = 20
    
    print (rec1.getArea())
    
    
    var rec2 = Rectangle(width: 15, height: 20)
    
    // rec1 va rec2 se la 2 vung nho khac nhau cho nen du no co cac gia tri cua thuoc tinh bang nhau thi no van khong the la 2 instance bang nhau
    
    
    print(rec2.getArea())
    
    // ------ so sanh doi tuong
    
    var rec3 = rec1
    
    // === so sanh dia chi 2 doi tuong tro toi
    
    
    if rec1 === rec3 {
        print ("true")
    }
    else{
        print ("False")
    }
}


test_rectangle()


