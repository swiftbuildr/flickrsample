//
// Created by Samuel Ward on 20/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import FlickrSample

class MockPublicFeedAPI: PublicFeedRetriever {

    var invokedRetrieve = false
    var invokedRetrieveCount = 0
    var stubbedRetrieveCompletionResult: (Result<PublicFeed>, Void)?

    func retrieve(_ completion: @escaping (Result<PublicFeed>) -> Void) {

        invokedRetrieve = true
        invokedRetrieveCount += 1
        if let result = stubbedRetrieveCompletionResult {
            completion(result.0)
        }
    }
}
