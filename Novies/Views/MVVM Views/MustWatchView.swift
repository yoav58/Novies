//
//  MustWatchView.swift
//  Novies
//
//  Created by יואב אליאב on 03/03/2024.
//

import SwiftUI


struct MustWatchView: View {
    @StateObject var mustWatchVM : MustWatchViewModel = MustWatchViewModel()

    
    var body: some View {
        
        ZStack{
            NavigationStack{
                MoviesScroller(Movies:mustWatchVM.movies, isShowDetails: $mustWatchVM.isShowDetails, currentMovieDetail: $mustWatchVM.currentMovieDetails )
                    .toolbar{
                        ToolbarItem{
                            NavigationLink(destination: AccountInfoView()){
                                Image(systemName: "person.crop.circle")
                            }
                        }
                        
                        ToolbarItem(placement: .principal){
                            Image("NoviesSymbol")
                                .resizable()
                                .frame(width: 50,height: 50)
                        }
                    }.navigationBarTitleDisplayMode(.inline) // may delete
                    .toolbarColorScheme(.dark, for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .background(Color("BackGround").opacity(0.9)) // Adjust the background color here
                    //.ignoresSafeArea()
                Spacer()
                
            } .task{
                mustWatchVM.addAllMovies()

            }.alert(item: $mustWatchVM.alertItem) {
                alertInput in
                Alert(title: alertInput.title, message: alertInput.message,dismissButton: alertInput.dismissButton)
            }.blur(radius: mustWatchVM.isShowDetails ? 20 : 0)
                .disabled(mustWatchVM.isShowDetails)
                
            
            if mustWatchVM.isShowDetails {
                MovieDetailsView(movie: mustWatchVM.currentMovieDetails!,isShowDetails: $mustWatchVM.isShowDetails)
            }
            
            if mustWatchVM.isLoading {
                LoadingView()
            }
                
            
        }
        

    }
    

}

#Preview {
    MustWatchView().environmentObject(WatchedMovies())
}
