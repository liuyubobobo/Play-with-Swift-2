//: Playground - noun: a place where people can play

import UIKit

class Country{
    
    let name: String
    //let capital: City
    var capital: City!
    
    init(countryName: String, capitalName: String){
        self.name = countryName
        self.capital = City(cityName: capitalName, country: self)
        print("Country", name, "is intialized.")
    }
    
    deinit{
        print("Country",name,"is being deinitialized!")
    }
}

class City{
    
    let name: String
    unowned let country: Country
    
    init(cityName: String, country: Country){
        self.name = cityName
        self.country = country
        print("City", name, "is intialized.")
    }
    
    deinit{
        print("City",name,"is being deinitialized!")
    }
}

var china: Country? = Country(countryName: "China", capitalName: "Beijing")
china = nil


