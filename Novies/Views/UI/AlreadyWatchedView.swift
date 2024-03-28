//
//  AlreadyWatchedView.swift
//  Novies
//
//  Created by יואב אליאב on 03/03/2024.
//

import SwiftUI

//AlreadyWatchedView this view include all the views the user already say


struct AlreadyWatchedView: View {
    
    @EnvironmentObject  var watchedMovies : WatchedMovies
    var toolBarColor = AppDesign.toolBarColor
    @State private var isShowAccountInfo = false
    

    
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                VStack{
                    List{
                        ForEach(watchedMovies.movies, id: \.Title){
                            movie in
                            WatchedMovieFrameView(movie: movie)
//                            MovieFrame(text: movie.Title, remoteMovie: MovieRemoteImage(urlString: movie.Poster), scaleImage: 1.4)
                                //.padding(.leading, 80)

                        }
                        .onDelete(perform: { indexSet in
                            watchedMovies.movies.remove(atOffsets: indexSet)
                        })
                    }.listStyle(.inset)
                        .background(.white)
                }

                
                .toolbar{

                    ToolbarItem(placement: .principal){
                        Image(AppDesign.noviesSymbol)
                            .resizable()
                            .frame(width: 50,height: 50)
                    }
               }.modifier(TopBarModifier())
                    .background(.white)
                    .fullScreenCover(isPresented: $isShowAccountInfo){
                        AccountInfoView(isShowAccountInfo: $isShowAccountInfo)
                    }
                
                
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
