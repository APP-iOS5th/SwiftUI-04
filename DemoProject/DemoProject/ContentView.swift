//
//  ContentView.swift
//  DemoProject
//
//  Created by Jungman Bae on 4/17/24.
//
import SwiftUI

struct User: Codable {
    let login: String
    let avatar_url: URL
}

struct Repository: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String?
}

actor GithubService {
    func fetchUser(username: String) async throws -> User {
        let url = URL(string: "https://api.github.com/users/\(username)")!
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode(User.self, from: data)
    }
    
    func fetchRepositories(username: String) async throws -> [Repository] {
        let url = URL(string: "https://api.github.com/users/\(username)/repos")!
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Repository].self, from: data)
    }
}

struct ContentView: View {
    @State private var username = "jmbae"
    @State private var user: User?
    @State private var repositories: [Repository] = []
    let githubService = GithubService()
    
    var body: some View {
        VStack {
            TextField("Github username:", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Fetch Data") {
                Task {
                    do {
                        async let fetchUser = githubService.fetchUser(username: username)
                        async let fetchRepositoris = githubService.fetchRepositories(username: username)
                        
                        user = try await fetchUser
                        repositories = try await fetchRepositoris
                    } catch {
                        print("Error: \(error)")
                    }
                }
            }
            
            if let user = user {
                AsyncImage(url: user.avatar_url) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width:100, height:100)
                .clipShape(Circle())
                
                Text(user.login)
                    .font(.title)
            }
            
            List(repositories) { repo in
                VStack(alignment: .leading) {
                    Text(repo.name)
                        .font(.headline)
                    Text(repo.description ?? "No description")
                        .font(.subheadline)
                }
            }
            
        }
    }
}


#Preview {
    ContentView()
}
