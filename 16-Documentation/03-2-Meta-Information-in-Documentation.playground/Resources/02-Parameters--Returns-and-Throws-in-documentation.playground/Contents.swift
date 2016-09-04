//: Playground - noun: a place where people can play

import UIKit

enum MyError: ErrorType{
    case BothNilError
    case JustImpossible
}

/// There are a few keywords Xcode can recognize automatically. The format is like **- <Keyword>**:. The most common use one is **Parameter**, **Throws** and **Returns**.
///
/// - Parameters:
///   - item1: This is item1
///   - item2: This is item2
///
/// - Throws: `MyError.BothNilError` if both item1 and item2 are nil.
///
/// - Returns: the result string.
func showKeywordsCommentsWithItem(item1: AnyObject?, item2: AnyObject?) throws -> String {
    
    if item1 == nil && item2 == nil{
        throw MyError.BothNilError
    }
    
    let text = "There are a few keywords Xcode can recognize automatically."
    return text
}
