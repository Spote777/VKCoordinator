//
//  LoginViewModel.swift
//  VKCoordinator
//
//  Created by Павел Заруцков on 22.11.2021.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var isAuthorized: Bool = false
    @Published var userId: String = ""
    @Published var token: String = ""
    
    @Published var cliendId = "7610544"
    @Published var version = "5.131"
}
