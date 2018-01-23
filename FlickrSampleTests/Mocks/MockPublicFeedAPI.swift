//
// Created by Samuel Ward on 20/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import FlickrSample

class MockPublicFeedAPI: PublicFeedRetriever {

    var invokedMakeRequest = false
    var invokedMakeRequestCount = 0
    var stubbedMakeRequestCompletionResult: (Result<PublicFeed>, Void)?

    func makeRequest(_ completion: @escaping (Result<PublicFeed>) -> Void) {

        invokedMakeRequest = true
        invokedMakeRequestCount += 1
        if let result = stubbedMakeRequestCompletionResult {
            completion(result.0)
        }
    }
}
