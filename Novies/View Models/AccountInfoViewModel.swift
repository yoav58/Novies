//
//  AccountInfoViewModel.swift
//  Novies
//
//  Created by יואב אליאב on 11/03/2024.
//

import SwiftUI


class AccountInfoViewModel : ObservableObject {
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var date = Date()
}
