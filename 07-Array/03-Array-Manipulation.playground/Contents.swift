//: Playground - noun: a place where people can play

import UIKit

var courses = ["玩儿转Swift","玩儿转Swift2(第一季)","玩儿转Swift2(第二季)"]

// 添加元素
courses.append("玩儿转Swift2(第三季)")
print(courses)

courses += ["玩儿转Swift2(第四季)"]
print(courses)

// 两个数组相加
courses += ["玩儿转Swift面向协议编程","玩儿转Swift面向函数编程"]
print(courses)

courses.insert("玩儿转Swift设计模式", atIndex: 5)
//courses.insert("玩儿转Swift设计模式", atIndex: 10)
print(courses)


// 数组常量
//使用let定义的数组不可以更改任何内容


// 删除元素
courses.removeLast()
print(courses)

courses.removeFirst()
print(courses)

courses.removeAtIndex(4)
//courses.removeAtIndex(10)
print(courses)

//courses.removeRange(0..<4)
//courses.removeRange(0..<10)
//print(courses)

//courses.removeAll()
//print(courses)


// 修改元素
courses[0] = "玩儿转Swift3(第一季)"
print(courses)

courses[1...3] = ["玩儿转Swift3(第二季)","玩儿转Swift3(第三季)","玩儿转Swift3(第四季)"]
print(courses)

courses[0...3] = ["玩儿转Swift3"]
print(courses)

