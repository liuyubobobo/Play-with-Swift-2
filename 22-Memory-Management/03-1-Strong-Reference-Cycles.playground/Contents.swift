//: Playground - noun: a place where people can play

import UIKit

class Person{
    
    var name: String
    var apartment: Apartment?
    
    init(name: String){
        self.name = name
        print("Person", name, "is initialized")
    }
    
    deinit{
        print("Person", name, "is being deinitialized!")
    }
}

class Apartment{
    
    let name: String
    var tenant: Person?
    
    init(name: String){
        self.name = name
        print("Apartment", name, "is initialized!")
    }
    
    deinit{
        print("Apartment", name, "is being deinitialized!")
    }
}

var liuyubobobo: Person? = Person(name: "liuyubobobo")
var imoocApartment: Apartment? = Apartment(name: "imooc Apartment")
liuyubobobo?.apartment = imoocApartment
imoocApartment?.tenant = liuyubobobo

imoocApartment = nil
liuyubobobo = nil

// 内存没有被正确释放


