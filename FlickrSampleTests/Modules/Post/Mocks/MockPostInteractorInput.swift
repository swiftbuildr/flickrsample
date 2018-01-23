//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import FlickrSample

class MockPostInteractorInput: PostInteractorInput {

    var invokedRetrieveEntity = false
    var invokedRetrieveEntityCount = 0

    func retrieveEntity() {

        invokedRetrieveEntity = true
        invokedRetrieveEntityCount += 1
    }
}
