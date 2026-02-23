//
//  Friend.swift
//  FriendFace
//
//  Created by kalyan on 2/22/26.
//

import Foundation


struct Friend: Hashable, Identifiable , Codable{
    let id: UUID
    var name: String
}
