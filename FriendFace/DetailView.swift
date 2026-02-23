//
//  DetailView.swift
//  FriendFace
//
//  Created by kalyan on 2/22/26.
//

import SwiftUI

struct DetailView: View {
    let users : User
    var body: some View {
        
        List{
            Section("About"){
                Text(users.about).padding(.vertical)
            }
            Section("Company Details"){
                
                Text("Adress: \(users.address)")
                Text("Company: \(users.company)")
                
            }
            
            Section("Friends"){
                ForEach(users.friends){ Friend in
                    Text(Friend.name)
                    
                }
            }
            
        }.listStyle(.grouped)
            .navigationTitle("User Details")
            .navigationBarTitleDisplayMode(.automatic)
        
    }
}

#Preview {
    DetailView(users: .example)
}
