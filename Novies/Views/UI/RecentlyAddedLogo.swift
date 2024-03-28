//
//  RecentlyAddedLogo.swift
//  Novies
//
//  Created by יואב אליאב on 20/03/2024.
//

import SwiftUI

// the logo of recent movies at the home page.
struct RecentlyAddedLogo: View {
    var body: some View {
        ZStack{
            Image("RecentlyAdded")
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 350)

            // Gradient overlay at the bottom of the image
            LinearGradient(gradient: Gradient(colors: [.clear, .black.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                .frame(height: 350)

        }
    }
}

#Preview {
    RecentlyAddedLogo()
}
