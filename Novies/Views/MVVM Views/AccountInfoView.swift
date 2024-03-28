//
//  AccountInfoView.swift
//  Novies
//
//  Created by יואב אליאב on 11/03/2024.
//

import SwiftUI

//MARK: currently not available.
struct AccountInfoView: View {
    @StateObject var viewModel = AccountInfoViewModel()
    @Binding var isShowAccountInfo : Bool



    
    var body: some View {
        NavigationView{
            
            Form{
                Section {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    
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
                .toolbar{
                    Button(
                        action:
                                {
                                    isShowAccountInfo = false
                                }
                            
                            
                            
                            , label: {
                                Image(systemName: "chevron.right")
                            })
                }
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
    AccountInfoView(isShowAccountInfo: .constant(true))
}
