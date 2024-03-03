//
//  homeViewCopy.swift
//  Novies
//
//  Created by יואב אליאב on 20/03/2024.
//

import SwiftUI

struct HomeViewAlternate: View {
    private var viewModel = HomeViewModel()
    private var recentlyAdded : RecentMovies = MockMovie.recent
    private var gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        
        if(viewModel.isLoading) {LoadingView()}
        NavigationStack{
            
            ScrollView{
            VStack{
                    
                    ZStack(alignment : .bottom){
                        AsyncImage(url: viewModel.returnImageUrl(id: viewModel.recentlyAdded?.TopId ?? "")
                                   , content: {
                            im in
                            im.resizable()
                                .frame(width: UIScreen.main.bounds.width, height: 600)
                                .clipped()

                                
                        }
                                   , placeholder: {
                            LoadingView()
                            
                        })
                        LinearGradient(gradient: Gradient(colors: [.clear, Color(UIColor.systemBackground)]), startPoint: .center, endPoint: .bottom)
                            .frame(height: 200)
                            .zIndex(1)
                        
                        

                        ZStack{
                            Image("RecentlyAdded")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 100)
                            // Gradient overlay at the bottom of the image
                            LinearGradient(gradient: Gradient(colors: [.clear, .black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                                .frame(height: 100)

                        }
                        Text("Recently Added")
                            .foregroundStyle(.white)
                            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/,radius: 3)
                            .font(.title3.weight(.black))
                            .multilineTextAlignment(.center)
                            .padding(.top,250)
                            .frame(width: 150,height: 300)
                            .zIndex(2)
                        
                        
                        
                        
                    }

                    
                    Text("Recently Added to Novies Top Movies")
                        .fontWeight(.semibold)
                    
                LazyVGrid(columns: gridItems){
                    recentImage2(movie: viewModel.recentlyAdded?.recentId[0] ?? "")
                    recentImage2(movie: viewModel.recentlyAdded?.recentId[1] ?? "")
                    recentImage2(movie: viewModel.recentlyAdded?.recentId[2] ?? "")
                    recentImage2(movie: viewModel.recentlyAdded?.recentId[3] ?? "")
                    
                    
                    
                    
                }
                    
                    
                }
            }.modifier(TopBarModifier())

        }
    }
}

// this logo will appear on the top of the view
struct homeLogoModifier2 : ViewModifier{
    func body(content: Content) -> some View {
        content.toolbar{
            ToolbarItem(placement: .principal){
                Image(AppDesign.noviesSymbol)
                    .resizable()
                    .frame(width: 50,height: 50)
            }
        }.navigationBarTitleDisplayMode(.inline) // may delete
            .toolbarBackground(AppDesign.toolBarColor.opacity(0.08))
           // .toolbarColorScheme(.light, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
    }
}

// only for this view
struct recentImage2 : View {
    var image : Image?
    var movie  : String
    var body: some View{
        AsyncImage(url: URL(string: "https://img.omdbapi.com/?i=\(movie)&h=600&apikey=\(GeneralData.apiKey)")
                   , content: {
            im in
            im.resizable()
                .frame(width: 190, height: 285)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                .shadow(radius: 5)
            
            
        }
                   , placeholder: {
            LoadingView()
            
        }).fixedSize()
        
    }
}


#Preview {
    HomeViewAlternate()
}
