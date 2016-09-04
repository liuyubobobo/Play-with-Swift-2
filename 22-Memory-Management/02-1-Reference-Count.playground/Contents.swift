//: Playground - noun: a place where people can play

import UIKit

class Person{
    
    var name: String
    var pet: Pet?
    
    init(name: String){
        self.name = name
        print("Person", name, "is initialized")
    }
    
    init(name: String, petName: String){
        self.name = name
        self.pet = Pet(name: petName);
        print("Person", name, "is initialized")
    }
    
    deinit{
        print("Person", name, "is deinitialized!")
    }
}

class Pet{
    
    var name: String
    init(name: String){
        self.name = name;
        print("Pet", name, "is initialized");
    }
    
    deinit{
        print("Pet", name, "is deinitialized!")
    }
}


//var liuyubobobo: Person? = Person(name: "liuyubobobo", petName: "aZai");
//liuyubobobo = nil

var liuyubobobo: Person? = Person(name: "liuyubobobo")

var aZai: Pet? = Pet(name: "aZai")
liuyubobobo?.pet = aZai

liuyubobobo = nil
aZai = nil
