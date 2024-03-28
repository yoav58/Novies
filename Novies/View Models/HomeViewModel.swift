//
//  HomeViewModel.swift
//  Novies
//
//  Created by יואב אליאב on 19/03/2024.
//

import Foundation

// HomeViewModel: the view model of HomeView
@Observable
final class HomeViewModel {
    
    var recentlyAdded : RecentMovies?;
    var isLoading = true
    
    
    init(){
        Task{
            
            await fetchRecentMovies()
        }
        
    }
    
      func fetchRecentMovies() async {
          
        let document = await TopMovieManager.shared.fetchRecentMovies()
          await MainActor.run{
              recentlyAdded = document
              isLoading = false
          }
    }
    
    func returnImageUrl(id : String)->URL?{
        return URL(string: "https://img.omdbapi.com/?i=\(id)&h=3000&apikey=\(GeneralData.apiKey)") 
    }
    
    
    
    
    
}
