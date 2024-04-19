//
//  ContentView.swift
//  DemoProject
//
//  Created by Jungman Bae on 4/17/24.
//
import SwiftUI

struct Repository: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String?
    let stargazersCount: Int
}

struct ContentView: View {
    @State private var username = "jmbae"
    @State private var repositories: [Repository] = []
    
    var body: some View {
        VStack {
            TextField("Github username:", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Fetch Data") {
                
            }
            List(repositories) { repo in
                VStack(alignment: .leading) {
                    Text(repo.name)
                        .font(.headline)
                    Text(repo.description ?? "No description")
                        .font(.subheadline)
                    Text("Stars: \(repo.stargazersCount)")
                }
            }
            
        }
    }
}


#Preview {
    ContentView()
}
