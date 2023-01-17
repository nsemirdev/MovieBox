//
//  MovieBoxAPITests.swift
//  MovieBoxAPITests
//
//  Created by Emir Alkal on 17.01.2023.
//

import XCTest
import MovieBoxAPI

final class MovieBoxAPITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTestRun() {
        MovieBoxAPIClient.testRun()
    }
}
