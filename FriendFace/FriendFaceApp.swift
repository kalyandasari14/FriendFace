//
//  FriendFaceApp.swift
//  FriendFace
//
//  Created by kalyan on 2/22/26.
//
import SwiftData
import SwiftUI

@main
struct FriendFaceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.modelContainer(for: User.self)
    }
}
