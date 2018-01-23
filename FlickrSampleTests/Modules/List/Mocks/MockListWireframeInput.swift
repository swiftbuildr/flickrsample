//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import FlickrSample

class MockListWireframeInput: ListWireframeInput {
    
    var invokedPresentWith = false
    var invokedPresentWithCount = 0
    var invokedPresentWithParameters: (postEntity: PostEntity, Void)?
    var invokedPresentWithParametersList = [(postEntity: PostEntity, Void)]()

    func present(with postEntity: PostEntity) {

        invokedPresentWith = true
        invokedPresentWithCount += 1
        invokedPresentWithParameters = (postEntity, ())
        invokedPresentWithParametersList.append((postEntity, ()))
    }

    var invokedPresent = false
    var invokedPresentCount = 0

    func present() {

        invokedPresent = true
        invokedPresentCount += 1
    }
}
