//
//  MovieDetailsView.swift
//  Novies
//
//  Created by יואב אליאב on 10/03/2024.
//

import SwiftUI

struct MovieDetailsView: View {
    var movie : Movie = MockMovie.TheGodfather
    var whyItsIn : String = " "
    @Binding var isShowDetails : Bool
    @EnvironmentObject var watched : WatchedMovies
    
    var body: some View {
        VStack{
            MovieRemoteImage(urlString: movie.Poster) // will not cost us with other requast because the images saved in cache
                //.resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300,height: 225)
            Text(movie.Title).font(.title2).bold()
            HStack(spacing: 40){
                MovieSmallDetail(dataName: "Release Date", dataInto: movie.Year)
                MovieSmallDetail(dataName: "Runtime", dataInto: movie.Runtime)

            }
            Text("Plot")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text(movie.Plot).font(.system(size: 12))
                .italic()

            Spacer()
            
            Button(
                action: 
                    {
                        watched.movies.append(movie)
                    }
                   
                   , label: {
                WatchedButton(text: "Add to Watched List")
            }).padding(.bottom)
            
            
            
            
        }.frame(width: 300, height: 525)
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(radius: 12)
            .overlay(alignment: .topTrailing){
                Button(
                    action: {
                        isShowDetails = false
                    },
                       
                       label: {
                    XButton()
                })
        }
    }
}

#Preview {
    MovieDetailsView(isShowDetails: .constant(false))
}

struct MovieSmallDetail: View {
    
    var dataName : String
    var dataInto : String
    
    var body: some View {
        VStack{
            Text(dataName)
                .font(.caption)
                .bold()
            
            Text(dataInto)
                .font(.caption)
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
