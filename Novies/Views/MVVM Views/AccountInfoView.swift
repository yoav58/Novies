//
//  AccountInfoView.swift
//  Novies
//
//  Created by יואב אליאב on 11/03/2024.
//

import SwiftUI

struct AccountInfoView: View {
    @StateObject var viewModel = AccountInfoViewModel()



    
    var body: some View {
        NavigationView{
            
            Form{
                Section {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
//                    TextField("Email", text: $email)
//                        .keyboardType(.emailAddress)
//                        .textInputAutocapitalization(.never)
                    
                    DatePicker("Birthday", selection: $viewModel.user.date, displayedComponents: .date)

                    Button {
                        viewModel.saveChanged()
                    } label: {
                        Text("Save Changes")
                    }

                    
                } header: {
                    Text("Personal Info")
                }

            }.navigationTitle("My Account")
                .onAppear{
                    viewModel.retrieveUser()
                }
        }.alert(item: $viewModel.alertItem){
            alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountInfoView()
}
