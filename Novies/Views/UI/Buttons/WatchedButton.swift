//
//  WatchedButton.swift
//  Novies
//
//  Created by יואב אליאב on 11/03/2024.
//

import SwiftUI

// WatchedButton: design of the button that if you press it the movie will be added to watched list
struct WatchedButton: View {
    
    var text : String
    var color = Color("NoviesColor")
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260,height: 50)
            .foregroundColor(.white)
            .background(color)
            .cornerRadius(13)
    }
}

#Preview {
    WatchedButton(text: "Add to Watched List")
}
