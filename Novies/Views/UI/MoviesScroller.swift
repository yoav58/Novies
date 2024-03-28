//
//  MoviesScroller.swift
//  Novies
//
//  Created by יואב אליאב on 04/03/2024.
//

import SwiftUI


let columns : [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]

// this view is scroller of the the movies inside it
struct MoviesScroller: View {
    
    var Movies : [Movie]
    @Binding var isShowDetails : Bool
    @Binding var currentMovieDetail : Movie?
    
    var body: some View {
        ScrollView{
            VStack{
                LazyVGrid(columns: columns){
                    ForEach(Movies, id: \.Title){
                        movie in
                        MovieFrame(text: movie.Title, remoteMovie: MovieRemoteImage(urlString: movie.Poster))
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    currentMovieDetail = movie
                                    isShowDetails = true
                                }
                                
                            }.clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 5)
                        
                    }.navigationTitle("Must Watch")
                        
                    
                }
            }
        }
    }
}

#Preview {
    MoviesScroller(Movies: MockMovie.movies,isShowDetails: .constant(false),currentMovieDetail: .constant(MockMovie.Godfather2)).environmentObject(WatchedMovies())
}
