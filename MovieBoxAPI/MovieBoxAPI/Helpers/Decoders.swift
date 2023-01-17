//
//  Decoders.swift
//  MovieBoxAPI
//
//  Created by Emir Alkal on 17.01.2023.
//

import Foundation

public enum Decoders {
    static let plainDateDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        return decoder
    }()
}
