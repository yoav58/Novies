//
//  X_Button.swift
//  Novies
//
//  Created by יואב אליאב on 11/03/2024.
//

import SwiftUI

//XButton: simple X button the quit from view
struct XButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width:30,height: 30)
                .foregroundColor(.gray)
                .opacity(0.2)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .frame(width: 44,height: 44)
                .foregroundColor(.primary)
        }
    }
}

#Preview {
    XButton()
}
