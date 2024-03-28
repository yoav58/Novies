//
//  ContentView.swift
//  Novies
//
//  Created by יואב אליאב on 03/03/2024.
//

import SwiftUI


//NoviesTavView: this view is respobnsible for the TabView, it contains all the tabs the user can see.

struct NoviesTabView: View {
    @State var showAccountInfo = false
    
    var body: some View {
            TabView{
                HomeViewAlternate()
                    .tabItem {
                        Label(AppDesign.homeViewText, systemImage: AppDesign.homeViewImage)
                    }
                
                GenreView()
                .tabItem {
                    Label(AppDesign.mustWatchText, systemImage: AppDesign.mustWatchImage)
                }
                
                AlreadyWatchedView()
                    .tabItem {
                        Label(AppDesign.watchedText, systemImage: AppDesign.watchedImage)
                    }
                

            }
            
        }
    }

#Preview {
    NoviesTabView().environmentObject(WatchedMovies())
}


