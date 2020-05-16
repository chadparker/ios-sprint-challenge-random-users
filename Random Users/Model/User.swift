//
//  User.swift
//  Random Users
//
//  Created by Chad Parker on 5/15/20.
//  Copyright © 2020 Erica Sadun. All rights reserved.
//

import Foundation

struct User: Codable {
    
    let name: Name
    struct Name: Codable {
        let title: String
        let first: String
        let last: String
    }
    
    let email: String
    let phone: String
    
    let picture: Picture
    struct Picture: Codable {
        let large: String
        let medium: String
        let thumbnail: String
    }
}

struct UserResult: Codable {
    
    let users: [User]
    
    enum CodingKeys: String, CodingKey {
        case users = "results"
    }
}