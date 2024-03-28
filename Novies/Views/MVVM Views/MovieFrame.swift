//
//  MovieFrame.swift
//  Novies
//
//  Created by יואב אליאב on 10/03/2024.
//

import SwiftUI

//MovieFrame: this movie will appear in movie details as the image of the movie
struct MovieFrame: View {
    
    var text : String = "No Movie"
    var remoteMovie : MovieRemoteImage 
    var color : Color = AppDesign.frameColor
    @EnvironmentObject var watchedMovies : WatchedMovies
    var textColor = AppDesign.textFrameColor
    var BackGroundColor = AppDesign.backgroundFrameColor
    var scaleImage : CGFloat = 1
    var body: some View {
        
        VStack{
            //190 160
            remoteMovie.frame(width: 190 * scaleImage ,height: 270 * scaleImage)
            Text(text)
                .font(.footnote) // Customize this as needed // headline
                .scaledToFit()
                .fontWeight(.regular) // Adjust weight as desired // been .medium
                .foregroundColor(textColor) // Or any custom color !!! my change
                //.shadow(radius: 1) // Adds a subtle shadow for better legibility
                .fixedSize(horizontal: false, vertical: true) // Allows text to wrap if needed
                .padding(.bottom)
                
        //190, 188
        }.padding().frame(width: 190 * scaleImage, height: 298 * scaleImage).background(watchedMovies.isContainMovie(title: text)
                                                              ? AppDesign.watchedColor : BackGroundColor
                                                              ,ignoresSafeAreaEdges: .all)
    }
}

#Preview {
    MovieFrame(remoteMovie : MovieRemoteImage(urlString: "noo")).environmentObject(WatchedMovies())
}
