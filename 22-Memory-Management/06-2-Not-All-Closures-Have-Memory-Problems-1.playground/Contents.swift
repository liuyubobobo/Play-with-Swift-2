//: Playground - noun: a place where people can play

import UIKit

class ScoreBook{
    
    var scores:[Int]
    static var changeScore: ((Int) -> Int)?
    var printTitle: ()->() = { _ in
        print("== SCORE BOOK ==")
    }
    
    init( scores:[Int] ){
        self.scores = scores
        print("Scorebook is initialized")
    }
    
    func printScore(){
        scores.map({ score in
            print("== \(score) ==")
        })
    }
    
    func changeScores(){
        
        if let changeScore = ScoreBook.changeScore{
            scores = scores.map(changeScore)
        }
    }
    
    deinit{
        print("Scorebook is being deinitialized.")
    }
    
}


let scores: [Int] = [99,85,67,13,94]

var scoreBook: ScoreBook? = ScoreBook(scores: scores)
ScoreBook.changeScore = { (score: Int) in
    return score - 2
}
scoreBook?.changeScores()
scoreBook?.printTitle()
scoreBook?.printScore()
scoreBook = nil
