//
//  TopMovieManager.swift
//  Novies
//
//  Created by יואב אליאב on 18/03/2024.
//

import Foundation
import Firebase
import FirebaseCore
import FirebaseFirestore


final class TopMovieManager : ObservableObject {
    static let shared = TopMovieManager()
    var movies: [MovieFirestore] = []
    var name2TitleNote : [String : String] = [:]
    var name2Note : [String : String] = [:]
    private var db = Firestore.firestore()
    private init() {}
    @Published var isFetching = true

    
    // fetch from firestore
    func fetchAllMovies(){
        
        
        db.collection("movies").getDocuments{
            (querySnapshot, error) in
            
            defer{
                
                DispatchQueue.main.async {
                    self.isFetching = false
                }
            }
            
            guard let querySnapshot else{
                print("error")
                return
            }
            
            
            self.movies = querySnapshot.documents.compactMap{
                document -> MovieFirestore? in
                
                let id = document.documentID
                let genre = document.data()["Genre"] as? String ?? " "
                let titleNote = document.data()["NoteTitle"] as? String ?? " "
                let note = document.data()["Note"] as? String ?? " "
                self.name2TitleNote[id] = titleNote
                self.name2Note[id] = note
                
                return MovieFirestore(id: id, genre: genre)
                
            }
            
        }
        self.isFetching = false
        
        
        
    }
    
    func fetchRecentMovies() async -> RecentMovies? {
        do {
            let querySnapshot = try await db.collection("generalData").getDocuments()
            guard let document = querySnapshot.documents.first else {
                return nil
            }
            
            
            let data = document.data()
            let top = data["Top"] as? String ?? ""
            let topId = data["TopId"] as? String ?? ""
            let topRating = data["TopRating"] as? String ?? ""
            let recentId = data["recentId"] as? [String] ?? [""]
            let recentMovies = data["recentMovies"] as? [String] ?? [""]
            
            return RecentMovies(Top: top, TopId: topId, TopRating: topRating, recentMovies: recentMovies, recentId: recentId)
        } catch {
            // Handle any errors
            print("Error fetching documents: \(error)")
            return nil
        }
    }
    
    
    
}
