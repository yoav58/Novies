//
//  NoviesLogoScreen.swift
//  Novies
//
//  Created by יואב אליאב on 17/03/2024.
//

import SwiftUI




 //MARK: NoviesLogoScreen : displays the app logo and a slogan. It is intended to be shown during app startup for a brief period.

struct NoviesLogoScreen: View {
    var body: some View {
        VStack {
            Image(AppDesign.noviesSymbol)
                .resizable()
                .scaledToFit()
                // Set the size as needed
                .frame(width: 200, height: 200)
            Text(AppDesign.noviesSlogen)
                .font(.caption2)
                .fontWeight(.semibold)
                .padding(.bottom,100)
        }

    }
}

#Preview {
    NoviesLogoScreen()
}
