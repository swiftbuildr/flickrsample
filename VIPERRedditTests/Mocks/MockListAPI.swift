//
// Created by Samuel Ward on 20/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import VIPERReddit

class MockListAPI: ListAPIInterface {

    var invokedRequest = false
    var invokedRequestCount = 0
    var stubbedRequestCompletionResult: (Result<TopPosts>, Void)?

    func request(_ completion: @escaping (Result<TopPosts>) -> Void) {

        invokedRequest = true
        invokedRequestCount += 1
        if let result = stubbedRequestCompletionResult {
            completion(result.0)
        }
    }
}
