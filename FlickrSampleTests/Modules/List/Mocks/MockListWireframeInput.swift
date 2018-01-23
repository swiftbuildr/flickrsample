//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import FlickrSample

class MockListWireframeInput: ListWireframeInput {

    var invokedPresentPost = false
    var invokedPresentPostCount = 0
    var invokedPresentPostParameters: (id: String, Void)?
    var invokedPresentPostParametersList = [(id: String, Void)]()

    func presentPost(withId id: String) {

        invokedPresentPost = true
        invokedPresentPostCount += 1
        invokedPresentPostParameters = (id, ())
        invokedPresentPostParametersList.append((id, ()))
    }

    var invokedPresent = false
    var invokedPresentCount = 0

    func present() {

        invokedPresent = true
        invokedPresentCount += 1
    }
}
