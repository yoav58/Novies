//
//  HomeView.swift
//  Novies
//
//  Created by יואב אליאב on 19/03/2024.
//

import SwiftUI

struct HomeView: View {
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
                        
                        


                        Text("Recently Added")
                            .foregroundStyle(.white)
                            .font(.largeTitle.weight(.black))
                            .multilineTextAlignment(.center)
                            .padding(.top,250)
                            .frame(width: 200,height: 350)
                        
                    }

                    
                    Text("Recently Added to Novies Top Movies")
                        .fontWeight(.semibold)
                    
                LazyVGrid(columns: gridItems){
                    recentImage(movie: viewModel.recentlyAdded?.recentId[0] ?? "")
                    recentImage(movie: viewModel.recentlyAdded?.recentId[1] ?? "")
                    recentImage(movie: viewModel.recentlyAdded?.recentId[2] ?? "")
                    recentImage(movie: viewModel.recentlyAdded?.recentId[3] ?? "")
                    
                    
                    
                    

                }
                

                
                    
                    
                    
                    
                }
            }.modifier(TopBarModifier())

        }
    }
}

// this logo will appear on the top of the view
struct homeLogoModifier : ViewModifier{
    func body(content: Content) -> some View {
        content.toolbar{
            ToolbarItem(placement: .principal){
                Image(AppDesign.noviesSymbol)
                    .resizable()
                    .frame(width: 50,height: 50)
            }
        }.navigationBarTitleDisplayMode(.inline) // may delete
            .toolbarBackground(AppDesign.toolBarColor.opacity(0.08))
            .toolbarColorScheme(.light, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
    }
}

// only for this view
struct recentImage : View {
    var image : Image?
    var movie  : String
    var body: some View{
        AsyncImage(url: URL(string: "https://img.omdbapi.com/?i=\(movie)&h=600&apikey=\(GeneralData.apiKey)")
                   , content: {
            im in
            im.resizable()
                .frame(width: 190, height: 285)
                .clipped()
            
            
        }
                   , placeholder: {
            LoadingView()
            
        }).fixedSize()
        
    }
}

#Preview {
    HomeView()
}
