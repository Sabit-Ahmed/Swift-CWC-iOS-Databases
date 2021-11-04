//
//  M1L3FirebaseDemoApp.swift
//  M1L3FirebaseDemo
//
//  Created by Sabit Ahmed on 11/10/21.
//

import SwiftUI
import Firebase

@main
struct M1L3FirebaseDemoApp: App {
    
    init() {
        FirebaseApp.configure()
        
        makeReservations()
//        addGames()
    }
    
    // Module 1 Lesson 12 Challenges
    func addGames() {
        // Reference to the cloud firestore database
        let db = Firestore.firestore()
        
        // Reference to the games collection
        // Create the games collection if it doesn't already exist
        let games = db.collection("games")
        
        // Create several documents with different values of number of levels
        games.document("Zelda SNES").setData(["name": "Zelda", "platform": "SNES", "players": 250])
        
        games.document("Zelda").setData(["name": "Zelda", "platform": "Nintendo", "players": 90])
        
        games.document("DK").setData(["name": "Donkey Kong", "platform": "Nintendo", "players": 200])
                
        games.document("Mega Man").setData(["name": "Mega Man", "platform": "Nintendo", "players": 110])
        
        games.document("Baseball").setData(["name": "Baseball", "platform": "Nintendo", "players": 50])
    }
    
    func makeReservations() {
        // Reference to the cloud firestore database
        let db = Firestore.firestore()
        
        // Reference to the reservations collection
        // Will be created if it doesn't exist
//        let reservations = db.collection("reservations")
//
//        // Create a document with a given identifier
//        reservations.document("test123").setData(["name": "Carol", "people" :22])
//
//        // Create a document with a unique identifier
//        reservations.document().setData(["name": "Tom"])
//
//        // Create a document with the given data (create document and set data steps combined)
//        let document = reservations.addDocument(data: ["name": "Sabit", "people": 10])
        
        // Lesson 5 Challenge
        
        // Challenge 1
//        let games = db.collection("games")
//        games.document("Super Mario World").setData(["name":"Super Mario World", "platform" : "Super Nintendo", "genre" : "Platformer"])
//
//        // Challenge 2
//        games.document("tetris").setData(["name" : "Tetris", "platform" : "Nintendo", "genre" : "Puzzle"])
//
//        // Challenge 3
//        games.addDocument(data: ["name" : "Pac-Man", "platform" : "Nintendo"])
//
//        // Challenge 4
//        let consoles = db.collection("consoles")
//        consoles.document("snes").setData(["name" : "Super Nintendo Entertainment System", "company" : "Nintendo"])
//
//        // Challenge 5
//        consoles.document("nes").setData(["name" : "Nintendo Entertainment System", "company" : "Nintendo"])
//
//        // Work with the document
        
        
        // Lesson 6: Updating data
        // Update data by overriding all entries
//        let reservations = db.collection("reservations").document("test123")
//        reservations.setData(["name": "Carol updated", "people": "10"])  // This will override everything with new contents if the document exists, otherwise create a new document
        
        // Update data by setting Merge into true. This will override only the merging parameters
//        reservations.setData(["name": "Carol updated by merge"], merge: true)
//
//        // Update by update method
//        reservations.updateData(["name": "Carol update by update method"])
//
        
        // Lesson 6 Challenge
        // Challenge 1
//        let games = db.collection("games").document("Super Mario World")
//        games.updateData(["platform": "SNES"])
//        games.setData(["rating": "E", "year": "1990"], merge: true)
        
        // Challenge 2
//        let consoles = db.collection("consoles").document("snes")
//        consoles.updateData(["name": "Super NES", "units": "49 million", "year": "1990"])
        
        // Lesson 7: Deleting data
//        let reservations = db.collection("reservations")
//        let reservation = reservations.addDocument(data: ["name": "Steve", "people": 8])
//        reservations.addDocument(data: ["name": "Cathy", "people": 8])
//        // Delete a field from document
//        reservation.updateData(["people": FieldValue.delete()])
        
        // Delete a document
//        reservation.delete()
        
        // Lesson 7 Challenge
        // Challenge 1
//        let games = db.collection("games")
//        let sm = games.document("Super Mario World")
//        sm.updateData(["genre": FieldValue.delete()])
        
        // Challenge 2
//        db.collection("consoles").document("snes").delete()
        
        // Lesson 8: Handling errors
//        let reservations = db.collection("reservations")
//        let doc = reservations.addDocument(data: [:]) { error in
//            // Handle error
//            if let error = error {
//                print("Error at insertion:: \(error.localizedDescription)")
//            }
//            else {
//                return
//            }
//        }
//
//        doc.delete { error in
//            if let error = error {
//                print("Error at deletion:: \(error.localizedDescription)")
//            }
//            else {
//                return
//            }
//        }
//
//        doc.updateData(["name":"sabit"]) { error in
//            if let error = error {
//                print("Error at update:: \(error.localizedDescription)")
//            }
//            else {
//                return
//            }
//        }
//
//        doc.setData([:]) { error in
//            if let error = error {
//                print("Error at insertion or update:: \(error.localizedDescription)")
//            }
//            else {
//                return
//            }
//        }
        
        // Lesson 9: Reading Data
        // Get data from a document
//        let reservations = db.collection("reservations")
//        let document = reservations.document("test123")
//        document.getDocument { documentSanpShot, error in
//            if let error = error {
//                // Handle error
//                print(error.localizedDescription)
//            }
//            else if let documentSanpShot = documentSanpShot {
//                print(documentSanpShot.data())
//                print(documentSanpShot.documentID)
//            }
//            else {
//                // No data returned from that document
//            }
//        }
//
//        // Get all documents from a collection
//        reservations.getDocuments { querySnapShot, error in
//            if let error = error {
//                print(error.localizedDescription)
//            }
//            else if let querySnapShot = querySnapShot {
//                for doc in querySnapShot.documents {
//                    print(doc.documentID)
//                    print(doc.data())
//                }
//            }
//            else{
//                // No data returned
//
//            }
//        }
        
        // Lesson 9 Challenge
        // Challenge 1
//        let consoles = db.collection("consoles")
//        let document = consoles.document("nes")
//        document.getDocument { docSnap, error in
//            if let error = error {
//                print(error.localizedDescription)
//            }
//            else if let docSnap = docSnap {
//                print(docSnap.data())
//            }
//            else {
//
//            }
//        }
//
//        // Challenge 2
//        let games = db.collection("games")
//        games.getDocuments { querySnapShot, error in
//            if let error = error {
//                print(error.localizedDescription)
//            }
//            else if let querySnapShot = querySnapShot {
//                for doc in querySnapShot.documents {
//                    print(doc.documentID)
//                }
//            }
//            else{
//                // No data returned
//
//            }
//        }
        
        // Lesson 10: Listening for the data changes
//        let reservations = db.collection("reservations")
//        let document = reservations.document("test123")
        
        // Add a snapshot listener to the document
//        document.addSnapshotListener { docSnapShot, error in
//            // Data is received every time a change is made to the document
//            print(docSnapShot?.data())
//        }
        
        // Add a snapshot listener to the reservations collection
//        let listener1 = reservations.addSnapshotListener { QuerySanpShot, error in
//            // Document is received every time a change is made in the reservations collection
//            for doc in QuerySanpShot!.documents {
//                print(doc.data()) // This will return every documents in that collection every time a change is made
//            }
//
//        }
//
//        let listener2 = reservations.addSnapshotListener { QuerySanpShot, error in
//            // Retrieve all the documents once and after that, retrieve only the changes in any document.
//            for doc in QuerySanpShot!.documentChanges {
//                print(doc.document.data())
//            }
//        }
        
        // Stop the listeners where is not necessary
//        listener1.remove()
//        listener2.remove()
        
        // Challenge 1
//        let consoles = db.collection("consoles")
//        let consoleListener = consoles.addSnapshotListener { querySnapShot, error in
//            for doc in querySnapShot!.documentChanges {
//                print(doc.document.data())
//            }
//        }
//
//        // Challenge 2
//        let games = db.collection("games")
//        let tetrisDoc = games.document("tetris")
//        let tetrisListener = tetrisDoc.addSnapshotListener { docSnapShot, error in
//            print(docSnapShot!.data())
//        }
        
        // Lesson 11: Querying data
//        let reservations = db.collection("reservations")
        
        // Create a qurey to the database
//        let query = reservations.whereField("name", in: ["Sabit", "Dave"])
//        let query = reservations.whereField("name", notIn: ["Carol", "Dave"])
//        let query = reservations.whereField("name", isEqualTo: "Sabit")
//        let query = reservations.whereField("name", isNotEqualTo: "Sabit")
//        let query = reservations.whereField("array", arrayContains: 20)
//        let query = reservations.whereField("array", arrayContains: "Sabit")
//        let query = reservations.whereField("array", arrayContainsAny: ["Sabit", 20])
//        let query = reservations.whereField("people", isLessThanOrEqualTo: 20)
//
//        // Execute the query
//        query.getDocuments { querySnapShot, error in
//            for doc in querySnapShot!.documents {
//                print(doc.data())
//            }
//        }
//
//        // Execute with an event listener
//        query.addSnapshotListener { querySnapShot, error in
//            for doc in querySnapShot!.documentChanges {
//                print(doc.document.data())
//            }
//        }
        
        // Challenge 1
//        let consoles = db.collection("consoles")
//        let consolesQuery = consoles.whereField("company", in: ["Nintendo"])
//        consolesQuery.getDocuments { querySnapShot, error in
//            for doc in querySnapShot!.documents {
//                print(doc.data())
//            }
//        }
        
        // Challenge 2
//        let games = db.collection("games")
//        let gamesQuery = games.whereField("platform", in: ["Nintendo", "SNES"])
//        gamesQuery.getDocuments { querySnapShot, error in
//            for doc in querySnapShot!.documents {
//                print(doc.data())
//            }
//        }
        
        // Challenge 3
//        let games = db.collection("games")
//        let gamesQuery = games.whereField("platform", notIn: ["Nintendo"])
//        gamesQuery.getDocuments { querySnapShot, error in
//            for doc in querySnapShot!.documents {
//                print(doc.data())
//            }
//        }
        
        // Lesson 12: Compound queries
//        let reservations = db.collection("reservations")
//
//        // Create composite query
//        let query = reservations
//            .whereField("name", in: ["Sabit", "Cathy"])
//            .whereField("people", isLessThan: 10)
//
//        query.getDocuments { querySnapShot, error in
//            if let querySnapShot = querySnapShot {
//                for doc in querySnapShot.documents {
//                    print(doc.data())
//                }
//            }
//        }
        
        // Challenge 1
        let games = db.collection("games")
//        let query1 = games
//            .whereField("platform", in: ["Nintendo"])
//            .whereField("players", isGreaterThan: 100)
//
//        query1.getDocuments { querySnapShot, error in
//            if let querySnapShot = querySnapShot {
//                for doc in querySnapShot.documents {
//                    print("Query 1 Data: \(doc.data())")
//                }
//            }
//        }
        // Challenge 2
        let query2 = games
            .whereField("platform", in: ["Nintendo"])
            .whereField("players", isLessThan: 100)

        query2.getDocuments { querySnapShot, error in
            if let querySnapShot = querySnapShot {
                for doc in querySnapShot.documents {
                    print("Query 2 Data: \(doc.data())")
                }
            }
        }
        // Challenge 3
//        let query3 = games
//            .whereField("name", in: ["Zelda"])
//            .whereField("players", isGreaterThan: 100)
//
//        query3.getDocuments { querySnapShot, error in
//            if let querySnapShot = querySnapShot {
//                for doc in querySnapShot.documents {
//                    print("Query 3 Data: \(doc.data())")
//                }
//            }
//        }
        
        
        
        
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
