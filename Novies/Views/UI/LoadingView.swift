//
//  LoadingScreen.swift
//  Novies
//
//  Created by יואב אליאב on 05/03/2024.
//

import SwiftUI

//LoadingView: design of the loading view.
struct LoadingView: View {
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack{

                ProgressView()
                Text("Loading")
                    .foregroundStyle(.primary)
                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    LoadingView()
}
