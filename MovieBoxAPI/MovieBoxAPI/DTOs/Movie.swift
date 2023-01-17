//
//  Movie.swift
//  MovieBoxAPI
//
//  Created by Emir Alkal on 17.01.2023.
//

import Foundation

public struct Movie: Codable {
    enum CodingKeys: String, CodingKey {
        case artistName
        case releaseDate
        case name
        case copyright
        case image = "artworkUrl100"
        case genres
    }
    
    let artistName: String
    let releaseDate: String
    let name: String
    let copyright: String?
    let image: URL
    let genres: [Genre]
}

public struct Genre: Codable {
    let name: String
}
