//
//  LaunchView.swift
//  Firebase Auth Demo
//
//  Created by Sabit Ahmed on 4/11/21.
//

import SwiftUI
import FirebaseAuthUI

struct LaunchView: View {
    
    @State var loggedIn: Bool = false
    @State var loginFormShowing: Bool = false
    
    var body: some View {
        
        // Check the loggedIn property and show the appropriate view
        if !loggedIn {
            
            // Show logged out view
            Button {
                // Show the login form
                loginFormShowing = true
                
            } label: {
                Text("Sign In")
            }
            .sheet(isPresented: $loginFormShowing, onDismiss: checkLogin) {
                LoginForm()
            }
            .onAppear {
                checkLogin()
            }
        }
        else {
            // Show logged in view
            ContentView(loggedIn: $loggedIn)
        }
        

    }
    
    func checkLogin() {
        loggedIn = FUIAuth.defaultAuthUI()?.auth?.currentUser == nil ? false : true
    }
    
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
