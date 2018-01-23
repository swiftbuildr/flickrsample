//
// Created by Samuel Ward on 23/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import FlickrSample

class MockURLSession: URLSession {

    var stubbedData: Data?
    var stubbedURLResponse: URLResponse?
    var stubbedError: Error?

    override func dataTask(with url: URL,
                           completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {

        completionHandler(stubbedData, stubbedURLResponse, stubbedError)

        return MockURLSessionDataTask()
    }
}
