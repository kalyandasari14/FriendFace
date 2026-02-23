//
//  ContentView.swift
//  FriendFace
//
//  Created by kalyan on 2/22/26.
//
import SwiftData
import SwiftUI



struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query(sort: \User.name) var users: [User]
   
    var body: some View {
        NavigationStack{
            List(users){user in
                NavigationLink(value: user){
                    HStack{
                        Circle()
                            .fill(user.isActive ? .green : .red).frame(width: 30)
                        
                        Text(user.name)
                    }
                }
                
            }.navigationTitle("Friend face")
                .navigationBarTitleDisplayMode(.automatic)
                .navigationDestination(for: User.self){ user in
                    DetailView(users: user)
                }.task {
                    await fecthUsers()
                }
        }
    }
    
    func fecthUsers() async{
        
        guard users.isEmpty else {return}
        
        do{
            let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json")!
            let(data,_) = try await URLSession.shared.data(from: url)
            
            let decoder = JSONDecoder()
            
            decoder.dateDecodingStrategy = .iso8601
            
           let downloadedusers = try decoder.decode([User].self, from: data)
            
            for user in downloadedusers {
                modelContext.insert(user)
            }
        } catch {
            print("Download failed")
        }
    }
}

#Preview {
    ContentView()
}
