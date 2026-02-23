//
//  User.swift
//  FriendFace
//
//  Created by kalyan on 2/22/26.
//


import Foundation

struct User: Hashable, Identifiable, Codable{
    
    let id : UUID
    var isActive: Bool
    var name: String
    var age : Int
    var company: String
    var email: String
    var address: String
    var about: String
    var registered: Date
    var tags: [String]
    var friends: [Friend]
    
    static let example = User(id: UUID(), isActive: false, name: "mikey", age: 26, company: "kalyan enterprises", email: "kalyandasari80@gmail.com", address: "3000 colonial parkway", about: "my name is mikey, and i am trying to geta  job at tech company and iam literally cooked if i dont", registered: .now, tags: ["vishnu","sai","Krishna","poorna"], friends: [])
    
    
}


