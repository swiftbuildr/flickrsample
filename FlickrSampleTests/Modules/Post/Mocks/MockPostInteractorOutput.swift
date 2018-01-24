//
// Created by Samuel Ward on 24/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import FlickrSample

class MockPostInteractorOutput: PostInteractorOutput {

    var invokedFinishedRetrieving = false
    var invokedFinishedRetrievingCount = 0
    var invokedFinishedRetrievingParameters: (result: Result<PostEntity>, Void)?
    var invokedFinishedRetrievingParametersList = [(result: Result < PostEntity>, Void)]()

    func finishedRetrieving(result: Result<PostEntity>) {

        invokedFinishedRetrieving = true
        invokedFinishedRetrievingCount += 1
        invokedFinishedRetrievingParameters = (result, ())
        invokedFinishedRetrievingParametersList.append((result, ()))
    }
}
