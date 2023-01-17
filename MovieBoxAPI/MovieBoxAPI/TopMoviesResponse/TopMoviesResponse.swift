//
//  TopMoviesResponse.swift
//  MovieBoxAPI
//
//  Created by Emir Alkal on 17.01.2023.
//

import Foundation

public struct TopMoviesResponse: Codable {
    
    private enum RootCodingKeys: String, CodingKey {
        case feed
    }
    
    private enum FeedCodingKeys: String, CodingKey {
        case results
    }
    
    let results: [Movie]
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: RootCodingKeys.self)
        let feedContainer = try container.nestedContainer(keyedBy: FeedCodingKeys.self, forKey: .feed)
        self.results = try feedContainer.decode([Movie].self, forKey: .results)
    }
}
