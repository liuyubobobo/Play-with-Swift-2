//: Playground - noun: a place where people can play

import UIKit

class Person{
    
    var name: String
    var creditCard: CreditCard?
    
    init(name: String){
        self.name = name
        print("Person", name, "is initialized")
    }
    
    deinit{
        print("Person", name, "is being deinitialized!")
    }
}

class CreditCard{
    
    let number: String
    unowned let customer: Person
    
    init(number: String, customer: Person){
        self.number = number
        self.customer = customer
        print("Credit Card", number, "is initialized")
    }
    
    deinit{
        print("Credit Card", number, "is being deinitialized!")
    }
}

var liuyubobobo: Person? = Person(name: "liuyubobobo")
var goldenCard: CreditCard? = CreditCard(number: "12345678", customer: liuyubobobo!)
liuyubobobo?.creditCard = goldenCard!

liuyubobobo = nil

// unowned is unsafe!

//goldenCard!.customer
//goldenCard

goldenCard = nil

