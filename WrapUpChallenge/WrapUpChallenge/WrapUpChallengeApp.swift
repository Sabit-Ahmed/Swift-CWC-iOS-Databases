//
//  WrapUpChallengeApp.swift
//  WrapUpChallenge
//
//  Created by Sabit Ahmed on 29/10/21.
//

import SwiftUI
import Firebase

@main
struct WrapUpChallengeApp: App {
    
    init() {
        // Set-up Firebase for the app
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ReadingListModel())
        }
    }
}
