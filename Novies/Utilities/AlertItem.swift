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
    
    static let invalidData = AlertItem (title: Text("Server Error"), message: Text("The data was invalid"), dismissButton: .default(Text("Ok")))
    
    static let invalidRespone = AlertItem (title: Text("Server Error"), message: Text("Invalid respone"), dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem (title: Text("Server Error"), message: Text("There was a problem connect to the server"), dismissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("unable to complete the requast"), dismissButton: .default(Text("OK")))
    
    
}
