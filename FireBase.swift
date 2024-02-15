//
//  FireBase.swift
//  Team Maddux Event App
//
//  Created by Lukian S. Pasika on 2/9/24.
//
import Firebase
import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreSwift

struct ContentView: View {
    @State private var users = [User]()

    var body: some View {
        List(users, id: \.id) { user in
            Text(user.name)
        }
        .onAppear {
            fetchData()
        }
    }

    func fetchData() {
        let db = Firestore.firestore()
        db.collection("users").getDocuments { (snapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                if let snapshot = snapshot {
                    self.users = snapshot.documents.compactMap { document in
                        do {
                            let user = try document.data(as: User.self)
                            return user
                        } catch {
                            print("Error decoding user: \(error)")
                            return nil
                        }
                    }
                }
            }
        }
    }
}

struct User: Identifiable, Codable {
    var id: String
    var name: String
    // Add other properties as needed
}
