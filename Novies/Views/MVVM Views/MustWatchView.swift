//
//  MustWatchView.swift
//  Novies
//
//  Created by יואב אליאב on 03/03/2024.
//

import SwiftUI

//MustWatchView all the movies the user must watch 
struct MustWatchView: View {
     @StateObject var mustWatchVM : MustWatchViewModel // = MustWatchViewModel()
    var toolBarColor = AppDesign.toolBarColor
    @State private var isShowAccountInfo = false
    
    init(_ genre: String){
        self._mustWatchVM = StateObject(wrappedValue: MustWatchViewModel(movieGenre: genre))
    }
    
    var body: some View {
        
        ZStack{
            NavigationStack{
                MoviesScroller(Movies:mustWatchVM.movies, isShowDetails: $mustWatchVM.isShowDetails, currentMovieDetail: $mustWatchVM.currentMovieDetails )
                    .toolbar{

                        
                        ToolbarItem(placement: .principal){
                            Image(AppDesign.noviesSymbol)
                                .resizable()
                                .frame(width: 50,height: 50)
                        }
                    }.modifier(TopBarModifier())
                
                    .padding(.top,2)

                
            } .task{
                mustWatchVM.addAllMovies()

            }.alert(item: $mustWatchVM.alertItem) {
                alertInput in
                Alert(title: alertInput.title, message: alertInput.message,dismissButton: alertInput.dismissButton)
            }.blur(radius: mustWatchVM.isShowDetails ? 20 : 0)
                .disabled(mustWatchVM.isShowDetails)
                .fullScreenCover(isPresented: $isShowAccountInfo){
                    AccountInfoView(isShowAccountInfo: $isShowAccountInfo)
                }
            
            if mustWatchVM.isShowDetails {
                MovieDetailsView(movie: mustWatchVM.currentMovieDetails!,isShowDetails: $mustWatchVM.isShowDetails)
            }
            
            if mustWatchVM.isLoading{
                LoadingView()
                

            }
                
            
        }
        

    }
    

}

#Preview {
    MustWatchView("Action").environmentObject(WatchedMovies())
}
