//
//  MovieFrame.swift
//  Novies
//
//  Created by יואב אליאב on 10/03/2024.
//

import SwiftUI

struct MovieFrame: View {
    
    var text : String = "No Movie"
    var remoteMovie : MovieRemoteImage 
    var color : Color = .gray
    @EnvironmentObject var watchedMovies : WatchedMovies
    var body: some View {
        
        VStack{
            remoteMovie.frame(width: 190,height: 160)
            Text(text)
                .font(.headline) // Customize this as needed
                .scaledToFit()
                .fontWeight(.medium) // Adjust weight as desired
                .foregroundColor(.primary) // Or any custom color
                //.shadow(radius: 1) // Adds a subtle shadow for better legibility
                .fixedSize(horizontal: false, vertical: true) // Allows text to wrap if needed
                .padding(.bottom)
                

        }.padding().frame(width: 190, height: 188).background(watchedMovies.isContainMovie(title: text)
                                                              ? Color("watchedColor").opacity(0.3) : Color.white.opacity(0.1)
                                                              ,ignoresSafeAreaEdges: .all)
    }
}

#Preview {
    MovieFrame(remoteMovie : MovieRemoteImage(urlString: "noo")).environmentObject(WatchedMovies())
}
