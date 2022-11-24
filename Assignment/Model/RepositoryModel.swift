//
//  RepositoryModel.swift
//  Assignment
//
//  Created by Koti Beemaneni on 24/11/22.
//

import Foundation


// MARK: - Repository
struct RepositoryStatus : Codable {
    let statusCode : Int
    let data : Repository
    
    enum CodingKeys: String, CodingKey {
        case statusCode = "status code"
        case data
    }
}

struct Repository: Codable {
    let totalCount: Int
    let incompleteResults: Bool
    let items: [Item]

    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case incompleteResults = "incomplete_results"
        case items
    }
}

// MARK: - Item
struct Item: Codable {
    let id: Int
    let nodeID, name, fullName: String
    let owner: Owner
    let htmlURL,description, language: String
    let collaboratorsURL: String

    enum CodingKeys: String, CodingKey {
        case id
        case nodeID = "node_id"
        case name, language
        case fullName = "full_name"
        case owner
        case htmlURL = "html_url"
        case description
        case collaboratorsURL = "collaborators_url"
    }
}

// MARK: - Owner
struct Owner: Codable {
    let login: String
    let id: Int
    let nodeID: String
    let avatarURL: String
    let htmlURL: String
    

    enum CodingKeys: String, CodingKey {
        case login, id
        case nodeID = "node_id"
        case avatarURL = "avatar_url"
        case htmlURL = "html_url"
    }
}

