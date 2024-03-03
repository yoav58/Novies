//
//  EmptyState.swift
//  Novies
//
//  Created by יואב אליאב on 12/03/2024.
//

import SwiftUI

struct EmptyState: View {
    
    var emptyImage = AppDesign.emptyImage
    var emptyText = AppDesign.emptyText
    
    var body: some View {
        ZStack{
            Color(emptyImage).opacity(0.9).ignoresSafeArea()
            VStack{
                Image("RacconLooking")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150,height: 150)
                Text(emptyText)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom,150)
            }
        }
    }
}

#Preview {
    EmptyState()
}
