//
//  ViewController.swift
//  MovieBox
//
//  Created by Emir Alkal on 17.01.2023.
//

import UIKit
import MovieBoxAPI

final class ViewController: UIViewController {

    let service: TopMoviesServiceProtocol! = TopMoviesService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        service.fetchTopMovies { result in
            switch result {
            case .success(let success):
                print(success)
            case .failure(let failure):
                print(failure)
            }
        }
    }


}

