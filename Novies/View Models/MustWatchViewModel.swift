//
//  MustWatchViewModel.swift
//  Novies
//
//  Created by יואב אליאב on 05/03/2024.
//

import Foundation
import SwiftUI



//MustWatchViewModel: the view model of MustWatch view

@MainActor final class MustWatchViewModel : ObservableObject{
    var movieGenre : String = "Action"
    @Published var movies : [Movie] = []
    private var AllMoviesLoad : [Movie] = []
    @Published var alertItem : AlertItem?
    @Published var isLoading = true
    @Published  var isShowDetails = false
    @Published var currentMovieDetails : Movie? = nil
    private var group : DispatchGroup = DispatchGroup()
    private var movieCount = 4
    
    
    init(movieGenre: String){
        self.movieGenre = movieGenre
    }
    
    
    func addAllMovies() {
        // Early return if movies are already loaded
        guard movies.isEmpty else {
            isLoading = false
            return
        }
        
        let moviesName = TopMovieManager.shared.movies.filter { $0.genre == movieGenre }
        
        Task {
            await withTaskGroup(of: Void.self) { group in
                for movie in moviesName {
                    group.addTask {
                        await self.addMovie(title: movie.id)
                    }
                }
                
                // Await for all tasks added to the group to complete
                await group.waitForAll()
                
                // Once all tasks are complete, update UI-related properties on the main thread
                DispatchQueue.main.async {
                    self.isLoading = false
                }
            }
        }
    }
    
    
    
    func loadMoviesList(){
        
    }
    
    
    func containMovie(_ title : String)-> Bool{
        return movies.contains{
            movie in
            movie.Title == title
        }
    }
    
    
    
    
    func addMovie(title: String) async {
        do {
            let movie = try await NetworkManager.shared.getMovieDetails(title: title, apiKey: GeneralData.apiKey)
            if !containMovie(movie.Title) {
                await MainActor.run {
                    movies.append(movie)
                }
            }
        } catch {
            await MainActor.run {
                guard let er = error as? APError else {
                    alertItem = AlertContext.invalidRespone
                    return
                }
                
                switch er {
                case .invalidURL:
                    alertItem = AlertContext.invalidURL
                case .invalidRespone:
                    alertItem = AlertContext.invalidRespone
                case .invalidData:
                    alertItem = AlertContext.invalidData
                case .unableToComplete:
                    alertItem = AlertContext.unableToComplete
                }
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //    func addMovie(title: String){
    //       // isLoading.self = false
    //        Task {
    //            do {
    //                let movie = try await NetworkManager.shared.getMovieDetails(title: title, apiKey: "")
    //                if(containMovie(movie.Title)) {return}
    //                self.movies.append(movie)
    //               // if(self.movies.count == self.moviesName.count) {isLoading = false}
    //
    //
    //            } catch{
    //                guard let er = error as? APError else{
    //                    alertItem = AlertContext.invalidRespone
    //                    return
    //                }
    //
    //                switch er{
    //
    //                case .invalidURL:
    //                    alertItem = AlertContext.invalidURL
    //                case .invalidRespone:
    //                    alertItem = AlertContext.invalidRespone
    //                case .invalidData:
    //                    alertItem = AlertContext.invalidData
    //                case .unableToComplete:
    //                    alertItem = AlertContext.unableToComplete
    //                }
    //            }
    //
    //        }
    //
    //
    //    }
    //
    //}
    //
}
