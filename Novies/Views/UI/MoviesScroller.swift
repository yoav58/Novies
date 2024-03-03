//
//  MoviesScroller.swift
//  Novies
//
//  Created by יואב אליאב on 04/03/2024.
//

import SwiftUI


let columns : [GridItem] = [GridItem(.flexible()), GridItem(.flexible())]

struct MoviesScroller: View {
    
    var Movies : [Movie]
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(Movies, id: \.Title){
                        movie in
                        //Image(movie.Poster)
                          //  .resizable()
                            //.frame(width: 200,height: 200)
                        Text(movie.Title)
                        Text(movie.Year)
                    }.navigationTitle("Must Watch")
                    
                }
            }
        }
    }
}

#Preview {
    MoviesScroller(Movies: MockMovie.movies)
}
