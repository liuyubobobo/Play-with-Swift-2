//: Playground - noun: a place where people can play

import UIKit

class Person{
    var name: String
    init(name: String){
        self.name = name
    }
}

//var objects: NSArray = [
//    CGFloat(3.1415926),
//    "imooc",
//    UIColor.blueColor(),
//    NSDate(),
//    Int(32),
//    Array<Int>([1,2,3])
//]

//var objects = [
//    CGFloat(3.1415926),
//    "imooc",
//    UIColor.blueColor(),
//    NSDate(),
//    Int(32),
//    Array<Int>([1,2,3]),
//    Person(name: "liuyubobobo")
//]
//
//// a 为AnyObject
//let a = objects[0]


//var objects: [AnyObject] = [
//    CGFloat(3.1415926),
//    "imooc",
//    UIColor.blueColor(),
//    NSDate(),
//    Int(32),
//    Array<Int>([1,2,3]),
//    Person(name: "liuyubobobo")
//]
//
//objects.append( { (a:Int) -> Int in
//    return a*a} )


var objects: [Any] = [
    CGFloat(3.1415926),
    "imooc",
    UIColor.blueColor(),
    NSDate(),
    Int(32),
    Array<Int>([1,2,3]),
    Person(name: "liuyubobobo")
]

objects.append( { (a:Int) -> Int in
    return a*a} )
