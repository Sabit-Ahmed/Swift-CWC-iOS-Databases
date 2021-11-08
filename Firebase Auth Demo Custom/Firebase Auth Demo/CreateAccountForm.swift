//
//  CreateAccountForm.swift
//  Firebase Auth Demo
//
//  Created by Sabit Ahmed on 4/11/21.
//

import SwiftUI
import FirebaseAuth
import Firebase

struct CreateAccountForm: View {
    
    @Binding var formShowing: Bool
    
    @State private var email: String = ""
    @State private var name: String = ""
    @State private var password: String = ""
    
    @State private var erroMessage: String?
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    TextField("Name", text: $name)
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password, prompt: Text("Enter a strong pasword"))
                }
                
                if erroMessage != nil {
                    Section {
                        Text(erroMessage!)
                    }
                }
                
                Button  {
                    // Create account
                    createAccount()
                } label: {
                    HStack {
                        Spacer()
                        Text("Create Account")
                        Spacer()
                    }
                }

            }
            .navigationTitle("Create an Account")
        }
        
        
    }
    
    func createAccount() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            
            DispatchQueue.main.async {
                
                if error == nil {
                    
                    // Save the first name
                    saveFirstName()
                    
                    // Sign in successful
                    formShowing = false
                }
                else {
                    erroMessage = error!.localizedDescription
                }
            }
        }
    }
    
    func saveFirstName() {
        
        if let currentUser = Auth.auth().currentUser {
            let  cleansedFirstName = name.trimmingCharacters(in: .whitespacesAndNewlines)
            
            let db = Firestore.firestore()
            let path = db.collection("users").document(currentUser.uid)
            
            path.setData(["name": cleansedFirstName]) { error in
                if error == nil {
                    // Error
                }
                else {
                    // Error
                }
            }
            
        }
        
    }
}

struct CreateAccountForm_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountForm(formShowing: Binding.constant(true))
    }
}
