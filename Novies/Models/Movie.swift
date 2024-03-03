//
//  Movie.swift
//  Novies
//
//  Created by יואב אליאב on 03/03/2024.
//

import Foundation


//MARK: this file include the movie structs,

// general movie struct taken from OMDb API
struct Movie : Codable{
    let Title : String
    let Year : String
    let Runtime : String
    let Plot : String
    let Poster: String
    let imdbID : String
    
}


// this strcut if for movies fetch from firestore
struct MovieFirestore{
    let id : String
    let genre : String

    
}

// this struct is for recently added movies that fetched from firestore
struct RecentMovies{
    var Top : String
    var TopId : String
    var TopRating : String
    var recentMovies : [String]
    var recentId : [String]
}





// for debug

struct MockMovie {
    static let TheGodfather = Movie(Title: "The Godfather", Year: "1972", Runtime: " v", Plot: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.", Poster: "godfatherImage", imdbID: "tt0068646")
    static let Godfather2 = Movie(Title: "The Godfather2", Year: "1972", Runtime: "2h 55m", Plot: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.", Poster: "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg", imdbID: "tt0071562")
    
    static let movies = [TheGodfather,Godfather2]
    
    static let recent = RecentMovies(Top:"dune part 2", TopId: "tt15239678", TopRating: "4", recentMovies: ["Oppenheimer", "The Batman", "Spider-Man: Across the Spider-Verse", "Godzilla Minus One"], recentId: ["tt9362722", "tt15398776", "tt1877830", "tt23289160"])
    
}



