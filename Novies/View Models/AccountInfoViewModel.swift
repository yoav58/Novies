//
//  AccountInfoViewModel.swift
//  Novies
//
//  Created by יואב אליאב on 11/03/2024.
//

import SwiftUI


class AccountInfoViewModel : ObservableObject {
    @Published var user = User()
    @Published var alertItem : AlertItem?
    @Published var  isInvalid = false;
    @AppStorage("user") private var userData : Data?
    
    
    var isValidForm : Bool {
        if !user.firstName.isEmpty && !user.lastName.isEmpty {return true}
        alertItem = AlertContext.InvalidForm
        isInvalid = true
        return false;
    }
    
    
    //MARK: - Methods
    func saveChanged(){
        guard isValidForm else {return}
        
        do {
            // convert the object to data
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSuccessSave
        }catch{
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUser(){
        guard let userData = self.userData else {return}
        
        do{
            user = try JSONDecoder().decode(User.self, from: userData)
        }catch{
            alertItem = AlertContext.invalidUserData
        }
    }
}
