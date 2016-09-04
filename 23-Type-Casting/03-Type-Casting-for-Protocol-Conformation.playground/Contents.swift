//: Playground - noun: a place where people can play

import UIKit


protocol Shape{
    
    var name: String{get}
}

protocol HasArea{
    func area() -> Double
}


struct Point: Shape{
    let name: String = "point"
    var x: Double
    var y: Double
}

struct Rectangle: Shape, HasArea{
    
    let name: String = "rectangle"
    var origin: Point
    var width: Double
    var height: Double
    
    func area() -> Double{
        return width * height
    }
}

struct Circle: Shape, HasArea{
    
    let name = "circle"
    var center: Point
    var radius: Double
    
    func area() -> Double{
        return M_PI * radius * radius
    }
}

struct Line: Shape{
    
    let name = "line"
    var a: Point
    var b: Point
}

let shapes:[Shape] = [
    Rectangle(origin: Point(x:0.0,y:0.0), width: 3.0, height: 4.0),
    Point(x: 0.0, y: 0.0),
    Circle(center: Point(x:0.0,y:0.0), radius: 1.0),
    Line(a: Point(x:1.0,y:1.0), b: Point(x:5.0,y:5.0))
]

for shape in shapes{
    
    if shape is HasArea{
        print("\(shape.name) has area.")
    }
    else{
        print("\(shape.name) has no area.")
    }
}

print("==========")

for shape in shapes{
    
    if let areaShape = shape as? HasArea{
        print("The area of \(shape.name) is \(areaShape.area()).")
    }
    else{
        print("\(shape.name) has no area.")
    }
}





