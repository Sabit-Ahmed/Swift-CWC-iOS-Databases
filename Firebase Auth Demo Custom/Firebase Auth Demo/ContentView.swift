//
//  ContentView.swift
//  Firebase Auth Demo
//
//  Created by Sabit Ahmed on 4/11/21.
//

import SwiftUI
import FirebaseAuth
import Firebase

struct ContentView: View {
    
    @Binding var loggedIn: Bool
    
    @State private var firstname: String = ""
    
    var body: some View {
        VStack (spacing: 20) {
            
            Text("Welcome!")
            
            Button {
                try! Auth.auth().signOut()
                loggedIn = false
            } label: {
                Text("Sign Out")
            }

        }
    }
    
    
}
