//
//  AlreadyWatchedView.swift
//  Novies
//
//  Created by יואב אליאב on 03/03/2024.
//

import SwiftUI

struct AlreadyWatchedView: View {
    
    @EnvironmentObject  var watchedMovies : WatchedMovies
    var toolBarColor = AppDesign.toolBarColor
    
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                VStack{
                    List{
                        ForEach(watchedMovies.movies, id: \.Title){
                            movie in
                            MovieFrame(text: movie.Title, remoteMovie: MovieRemoteImage(urlString: movie.Poster))
                        }
                        .onDelete(perform: { indexSet in
                            watchedMovies.movies.remove(atOffsets: indexSet)
                        })
                    }.listStyle(.inset)
                        .background(.white)
                }

                
                .toolbar{
                    ToolbarItem{
                        NavigationLink(destination: AccountInfoView()){
                            Image(systemName: "person.crop.circle")
                        }
                    }
                    ToolbarItem(placement: .principal){
                        Image(AppDesign.noviesSymbol)
                            .resizable()
                            .frame(width: 50,height: 50)
                    }
                }.navigationBarTitleDisplayMode(.inline) // may delete
                    .toolbarBackground(toolBarColor.opacity(0.08))
                    .toolbarColorScheme(.dark, for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .background(.white)
                
                
                
                if watchedMovies.movies.isEmpty {
                    EmptyState()
                }
                
            }



        }

    }
}

#Preview {
    AlreadyWatchedView().environmentObject(WatchedMovies())
}
