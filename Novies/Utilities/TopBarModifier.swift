//
//  TopBarModifier.swift
//  Novies
//
//  Created by יואב אליאב on 17/03/2024.
//

import Foundation
import SwiftUI


// top bar logo modifier

struct TopBarModifier : ViewModifier {
    
    func body(content: Content) -> some View {
        content.toolbar{
            ToolbarItem(placement: .principal){
                Image(AppDesign.noviesSymbol)
                    .resizable()
                    .frame(width: 50,height: 50)
            }
        }.navigationBarTitleDisplayMode(.inline) 
            .toolbarBackground(AppDesign.toolBarColor.opacity(0.08))
            //.toolbarColorScheme(.light, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
           // .background(.white)
    }
    
}
