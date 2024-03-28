//
//  GenreFrameView.swift
//  Novies
//
//  Created by יואב אליאב on 17/03/2024.
//

import SwiftUI

//GenreFrameView: design the genre button
struct GenreFrameView: View {
    var genreType: String = "Action"
    
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .frame(width: 185,height: 155)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .gray,radius: 7)
            Image(genreType)
                .resizable()
                .frame(width: 185 , height: 175)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .gray, radius: 4)
                .padding(.top, 5)

            
        }
    }
    
}


#Preview {
    GenreFrameView()
}
