//
//  ContentView.swift
//  Firebase Auth Demo
//
//  Created by Sabit Ahmed on 4/11/21.
//

import SwiftUI
import FirebaseAuthUI

struct ContentView: View {
    
    @Binding var loggedIn: Bool
    
    var body: some View {
        VStack {
            Text("Welcome!")
            
            Button {
                try! FUIAuth.defaultAuthUI()?.signOut()
                loggedIn = false
            } label: {
                Text("Sign Out")
            }

        }
    }
}
