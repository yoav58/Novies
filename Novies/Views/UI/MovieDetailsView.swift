//
//  MovieDetailsView.swift
//  Novies
//
//  Created by יואב אליאב on 10/03/2024.
//

import SwiftUI

//MovieDetailsView: the movie detail view, when the user press on a movie this view appear
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
            ScrollView{
                VStack{
                    Text("Plot")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.top)
                    
                    Text(movie.Plot).font(.system(size: 12))
                        //.italic()
                        .padding(.leading,4)
                    
                    Text("Why It's In That List?")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.top)
                    
                    Text(TopMovieManager.shared.name2ReasonInList[movie.Title] ?? " ").font(.system(size: 12))
                        //.italic()
                        .padding(.leading,4)

                }
                
                
            }
            
            // in case the movie already watched the button will not work.
            Button(
                action: 
                    {
                        watched.movies.append(movie)
                        isShowDetails = false
                    }
                   
                   , label: {
                       if(watched.isContainMovie(title: movie.Title)) {WatchedButton(text:"Watched", color: Color("watchedColor2"))}
                       else{
                           WatchedButton(text: "Add to Watched List")
                       }
            }).padding(.bottom)
                .disabled(watched.isContainMovie(title: movie.Title))
            
            
            
            
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
