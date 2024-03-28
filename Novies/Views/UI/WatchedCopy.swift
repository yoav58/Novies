//
//  WatchedCopy.swift
//  Novies
//
//  Created by יואב אליאב on 20/03/2024.
//

import SwiftUI

struct WatchedCopy: View {
    
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
    
                Text("Life Forms")
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.primary) // Adjust as needed
                
                Text("Friends can come in many varieties; friendship is not just between humans, its between all forms of life.")
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
            let noteTest = TopMovieManager.shared.name2TitleNote["E.T. The Extra-Terrestrial"] ?? "Yoav"
            print(noteTest)
        }
    }
}


#Preview {
    WatchedCopy(movie: MockMovie.TheGodfather)
}
