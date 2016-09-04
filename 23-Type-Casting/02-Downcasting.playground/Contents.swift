//: Playground - noun: a place where people can play

import UIKit

class MediaItem{
    var name: String
    init(name: String){
        self.name = name
    }
}

class Movie: MediaItem{
    var genre: String
    init(name: String, genre: String){
        self.genre = genre
        super.init(name: name)
    }
}

class Music: MediaItem{
    var artist: String
    init(name: String, artistName: String){
        self.artist = artistName
        super.init(name: name)
    }
}

class Game: MediaItem{
    var developer: String
    init(name: String, developer: String){
        self.developer = developer
        super.init(name: name)
    }
}


let library: [MediaItem] = [
    Movie(name: "Zootopia", genre: "Animation"),
    Music(name: "Hello", artistName: "Adele"),
    Game(name: "LIMBO", developer: "Playdead"),
    Music(name: "See you agian", artistName: "Wiz Khalifa"),
    Game(name: "The Bridge", developer: "The Quantum Astrophysicists Guild")
]

//let item0 = library[0] as? Movie
//let item0 = library[0] as? Music
//let item0 = library[0] as! Movie
//let item0 = library[0] as! Music

for mediaItem in library{
    if let movie = mediaItem as? Movie{
        print("Movie:", movie.name, "Genre:", movie.genre)
    }
    else if let music = mediaItem as? Music{
        print("Music:", music.name, "Artist:", music.artist)
    }
    else if let game = mediaItem as? Game{
        print("Game:", game.name, "Developer(s):", game.developer)
    }
}
