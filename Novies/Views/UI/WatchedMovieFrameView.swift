//
//  WatchedMovieFrameView.swift
//  Novies
//
//  Created by יואב אליאב on 14/03/2024.
//

import SwiftUI


// WatchedMovieFrameView: this view include all the movies the user watched already
struct WatchedMovieFrameView: View {
    var movie : Movie

    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            
            AsyncImage(url: URL(string: movie.Poster) ){
                image in
                image.resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                    .cornerRadius(8)
            } placeholder: {
                Image("notFoundImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150)
                    .cornerRadius(8)
            }

                
            VStack(alignment: .leading, spacing: 8) {
    
                Text(TopMovieManager.shared.name2TitleNote[movie.Title] ?? "")
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.primary) // Adjust as needed
                
                Text(TopMovieManager.shared.name2Note[movie.Title] ?? " " )
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                Image(AppDesign.watchedTropyImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .cornerRadius(8)
                
                
            }
            
            
            Spacer()
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
        .onAppear(){
            let noteTest = TopMovieManager.shared.name2TitleNote["E.T. The Extra-Terrestrial"] ?? " "
            print(noteTest)
        }
    }
}


#Preview {
    WatchedMovieFrameView(movie: MockMovie.TheGodfather)
}
