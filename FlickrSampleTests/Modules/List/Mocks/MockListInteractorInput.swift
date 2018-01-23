//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import FlickrSample

class MockListInteractorInput: ListInteractorInput {

    var invokedGetList = false
    var invokedGetListCount = 0

    func getList() {

        invokedGetList = true
        invokedGetListCount += 1
    }
}
