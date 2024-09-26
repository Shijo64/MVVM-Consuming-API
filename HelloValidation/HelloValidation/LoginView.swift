//
//  ContentView.swift
//  HelloValidation
//
//  Created by Arturo Calvo on 24/09/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var user: String = ""
    @State private var password: String = ""
    
    var isFormValid: Bool {
        return !user.isEmpty && !password.isEmpty && user.isValidemail
    }
    
    var body: some View {
        Form {
            TextField("Username", text: $user)
                .textInputAutocapitalization(.never)
            SecureField("Password", text: $password)
            Button("Login") {
                
            }.disabled(!isFormValid)
        }
    }
}

#Preview {
    LoginView()
}
