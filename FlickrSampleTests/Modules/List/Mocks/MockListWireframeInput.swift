//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import FlickrSample

class MockListWireframeInput: ListWireframeInput {

    var invokedPresentItem = false
    var invokedPresentItemCount = 0
    var invokedPresentItemParameters: (id: String, Void)?
    var invokedPresentItemParametersList = [(id: String, Void)]()

    func presentItem(withId id: String) {

        invokedPresentItem = true
        invokedPresentItemCount += 1
        invokedPresentItemParameters = (id, ())
        invokedPresentItemParametersList.append((id, ()))
    }

    var invokedPresent = false
    var invokedPresentCount = 0

    func present() {

        invokedPresent = true
        invokedPresentCount += 1
    }
}
