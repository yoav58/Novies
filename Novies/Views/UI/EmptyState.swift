//
//  EmptyState.swift
//  Novies
//
//  Created by יואב אליאב on 12/03/2024.
//

import SwiftUI

//EmptyState: is the user didnt saw any movie, this view will appear
struct EmptyState: View {
    
    var emptyImage = AppDesign.emptyImage
    var emptyText = AppDesign.emptyText
    var backGroundColor = AppDesign.backGroundEmpty
    
    var body: some View {
        ZStack{
            
            //Color(backGroundColor).opacity(0.9).ignoresSafeArea()
            VStack{
                Image(emptyImage)
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
