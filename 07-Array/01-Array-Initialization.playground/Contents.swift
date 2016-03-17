//: Playground - noun: a place where people can play

import UIKit

// 数组初始化
var numbers = [0,1,2,3,4,5]
var vowels  = ["A","E","I","O","U"]

// 数组的类型： [Int] 或者 Array<Int>
//var numbers: [Int] = [0,1,2,3,4,5]
//var numbers: Array<Int> = [0,1,2,3,4,5]

// 空数组
var emptyArray1:[Int] = []
var emptyArray2 = [Int]()
var emptyArray3:Array<Int> = []
var emptyArray4 = Array<Int>()

// 创建具有默认值的数组
var allZeros = Array<Int>(count: 5, repeatedValue: 0)
var allZeros2 = [Int](count: 5, repeatedValue: 0)

// 直接写[]会桥接为NSArray，除非特殊情况，不要这么做
var emptyArray5 = []
