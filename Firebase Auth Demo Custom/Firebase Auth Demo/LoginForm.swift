//
//  LoginForm.swift
//  Firebase Auth Demo
//
//  Created by Sabit Ahmed on 4/11/21.
//

import SwiftUI
import FirebaseAuth

struct LoginForm: View {
    
    @Binding var loginFormShowing: Bool
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State var errorMessage: String?
    
    var body: some View {
        NavigationView {
            
            Form {
                Section {
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                }
                
                if errorMessage != nil {
                    Section {
                        Text(errorMessage!)
                    }
                }
                
                Button {
                    
                    // Perform login
                    signIn()
                    
                } label: {
                    HStack {
                        Spacer()
                        Text("Sign In")
                        Spacer()
                    }
                }

            }
            .navigationTitle("Sign In")
        }
        
    }
    
    func signIn() {
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            
            DispatchQueue.main.async {
                if error == nil {
                    // Login successful
                    loginFormShowing = false
                }
                else {
                    errorMessage = error!.localizedDescription
                }
            }
        }
        
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm(loginFormShowing: Binding.constant(true))
    }
}
