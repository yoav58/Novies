//
//  GenreView.swift
//  Novies
//
//  Created by יואב אליאב on 17/03/2024.
//

import SwiftUI

//MARK: GenreView
// this view  shows all the categories of the movies

struct GenreView: View {
    
    var categoriesImage = AppDesign.CategoriesViewPicture
    var toolBarColor = AppDesign.toolBarColor
    var gridItms : [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]  
    var moviesGenre = GeneralData.movieGenre
    @ObservedObject var topMovieManager = TopMovieManager.shared
    
    
    
    var body: some View {
        
        ZStack{
            NavigationStack{
                
                ScrollView{
                    
                    VStack{
                        Image(categoriesImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 200 , height: 100)
                            .padding(.top,30)
                        LazyVGrid(columns: gridItms){
                            
                            // draw all the categories images
                            ForEach(moviesGenre, id: \.self){
                                genre in
                                NavigationLink(destination: MustWatchView(genre)){
                                    GenreFrameView(genreType: genre)
                                    
                                }.foregroundStyle(.primary)

                            }
                            
                        }
                        
                        
                    }
                    
                    VStack{
                        
                        
                        
                        
                    }.modifier(TopBarModifier())
                    
                }
            }
            
            if TopMovieManager.shared.isFetching{
                LoadingView()
            }
            
            
        }
    }
}

#Preview {
    GenreView()
}
