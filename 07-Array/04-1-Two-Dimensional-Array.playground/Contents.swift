//: Playground - noun: a place where people can play

import UIKit

var board = [ [1024,16,2,0] , [256,4,2,0] , [64,2,0,0] , [2,0,0,0] ]
//var board:[[Int]] = [ [1024,16,2,0] , [256,4,2,0] , [64,2,0,0] , [2,0,0,0] ]
//var board:[Array<Int>] = = [ [1024,16,2,0] , [256,4,2,0] , [64,2,0,0] , [2,0,0,0] ]


// 为二维数组的第一个维度添加的元素是一个数组
board.append([0,0,0,0])
board += [ [0,0,0,0] ]


// 获取二维数组两个维度的信息
board.count
board[0].count


// Swift中的二维数组，每一维度的元素数目可以不同
board[0].append(0)
board


