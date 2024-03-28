//
//  watchedMovies.swift
//  Novies
//
//  Created by יואב אליאב on 12/03/2024.
//

import Foundation


//MARK: this object is to manage all the watched movies.

final class WatchedMovies : ObservableObject {
    
    private let watchedMoviesKey = "watchedMoviesKey"
    
    @Published var movies : [Movie] = [] {
        didSet{
            saveToUserDefaults()
        }
    }
    
    init(){
        loadFromUserDefaults()
    }
    
    
    func isContainMovie(title: String) -> Bool {
        return movies.contains { mov in
            mov.Title == title
        }
    }
    
    
    private func saveToUserDefaults() {
        if let encodedMovies = try? JSONEncoder().encode(movies) {
            UserDefaults.standard.set(encodedMovies, forKey:watchedMoviesKey)
        }
    }
    
    private func loadFromUserDefaults() {
        if let savedMovies = UserDefaults.standard.data(forKey: watchedMoviesKey),
           let decodedMovies = try? JSONDecoder().decode([Movie].self, from: savedMovies) {
            movies = decodedMovies
        }
    }
    
    
    
}
