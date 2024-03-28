//
//  NoviesApp.swift
//  Novies
//
//  Created by יואב אליאב on 03/03/2024.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}


@main
struct NoviesApp: App {
    
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var watchedMovies = WatchedMovies()
    @State private var showLogoScreen = true

    
    var body: some Scene {
        

        WindowGroup {
            
            if showLogoScreen {
                NoviesLogoScreen()
                    .transition(.slide)

                    .onAppear(){
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // Adjust the delay as needed
                            showLogoScreen = false
                        }
                    }

                        
                    }else {
                        NoviesTabView().environmentObject(watchedMovies).transition(.move(edge: .bottom))
                            .task {
                                TopMovieManager.shared.fetchAllMovies()
                            }
                        
                        }
                    }
            }
        }
