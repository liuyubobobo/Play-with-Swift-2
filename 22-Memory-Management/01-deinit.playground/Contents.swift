//: Playground - noun: a place where people can play

import UIKit

class Person{
    
    var name: String
    
    init(name: String){
        self.name = name
        print(name,"is coming")
    }
    
    func doSomething(){
        print(name,"is doing something")
    }
    
    deinit{
        print(name,"is leaving!")
    }
}


var liuyubobobo: Person? = Person(name: "liuyubobobo")
liuyubobobo = nil


func inTheShop(){
    
    print("==========")
    print("Welcome!")
    
    // let 在作用域的最后也会deinit
    let liuyubobobo: Person = Person(name: "liuyubobobo")
    liuyubobobo.doSomething()
}

inTheShop()


func inTheAppleStore(){
    
    print("==========")
    print("Welcome to the Apple Store!")
    
    for i in 1...10{
        print("Time",i)
        let liuyubobobo: Person = Person(name: "liuyubobobo")
        liuyubobobo.doSomething()
    }
}

inTheAppleStore()


// deinit主要用于回收资源