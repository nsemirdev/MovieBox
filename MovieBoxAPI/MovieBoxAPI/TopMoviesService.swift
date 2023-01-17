//
//  TopMoviesService.swift
//  MovieBoxAPI
//
//  Created by Emir Alkal on 17.01.2023.
//

import Foundation
import Alamofire

public protocol TopMoviesServiceProtocol {
    func fetchTopMovies(completion: @escaping (Result<TopMoviesResponse, Error>) -> Void)
}

public final class TopMoviesService: TopMoviesServiceProtocol {
    
    public init() {}
    
    public func fetchTopMovies(completion: @escaping (Result<TopMoviesResponse, Error>) -> Void) {
        let urlString = "https://rss.applemarketingtools.com/api/v2/us/music/most-played/10/albums.json"
    
        AF.request(urlString).responseData { response in
            switch response.result {
            case .success(let responseData):
                let decoder = Decoders.plainDateDecoder
                do {
                    let response = try decoder.decode(TopMoviesResponse.self, from: responseData)
                    completion(.success(response))
                } catch {
                    completion(.failure(error))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
