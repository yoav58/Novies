//
//  AlertItem.swift
//  Novies
//
//  Created by יואב אליאב on 05/03/2024.
//

import Foundation
import SwiftUI


struct AlertItem: Identifiable {
    let id = UUID()
    let title : Text
    let message : Text
    let dismissButton: Alert.Button
}



struct AlertContext{
    

    // MARK: - Netwrok alert
    
    static let invalidData = AlertItem (title: Text("Server Error"), message: Text("The data was invalid"), dismissButton: .default(Text("Ok")))
    
    static let invalidRespone = AlertItem (title: Text("Server Error"), message: Text("Invalid respone"), dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem (title: Text("Server Error"), message: Text("There was a problem connect to the server"), dismissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("unable to complete the requast"), dismissButton: .default(Text("OK")))
    
    
    // MARK: - Account alert

    static let InvalidForm = AlertItem(title: Text("Invalid Form"), message: Text("Please ensure all fields in the form have been filled"), dismissButton: .default(Text("OK")))
    
    static let userSuccessSave = AlertItem(title: Text("Profile Saved"), message: Text("Your profile information was successfully saved"), dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title: Text("Failed to save"), message: Text("There was an error saving"), dismissButton: .default(Text("OK")))
    
    
    
}
