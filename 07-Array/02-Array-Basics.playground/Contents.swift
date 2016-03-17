//: Playground - noun: a place where people can play

import UIKit


var numbers = [1,2,3,4,5]
var vowels = ["A","E","I","O","U"]
var emptyArray = [Int]()


// 数组长度
vowels.count

// 判空
numbers.isEmpty
emptyArray.isEmpty

// 获取元素
vowels[2]
// 数组越界是一个严重的错误
//vowels[-1]
//vowels[5]

// 获取第一个元素和最后一个元素，返回的是可选型
vowels.first
vowels.last
emptyArray.first

if let firstVowel = vowels.first{
    print("The first vowel is " + firstVowel)
}

// 获取最小值
numbers.minElement()

// 使用范围
numbers[2..<5]
numbers[2..<numbers.count]

// 包含
let letter = "A"
if vowels.contains( letter ){
    print("\(letter) is a vowel")
}
else{
    print("\(letter) is not a vowel")
}

numbers[3..<numbers.count].contains(10)

// 遍历
for index in 0..<numbers.count{
    numbers[index]
}

for number in numbers{
    print(number)
}

for (index, vowel) in vowels.enumerate(){
    print("\(index+1): \(vowel)")
}

// 比较
var oneToFive = [1,2,3,4,5]
numbers == oneToFive
