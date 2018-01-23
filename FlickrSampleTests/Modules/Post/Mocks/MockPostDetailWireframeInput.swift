//
// Created by Samuel Ward on 20/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit
@testable import FlickrSample

class MockPostWireframeInput: PostWireframeInput {

    var invokedPresent = false
    var invokedPresentCount = 0
    var invokedPresentParameters: (navigationController: UINavigationController, id: String)?
    var invokedPresentParametersList = [(navigationController: UINavigationController,
                                                id: String)]()

    func present(from navigationController: UINavigationController, withId id: String) {

        invokedPresent = true
        invokedPresentCount += 1
        invokedPresentParameters = (navigationController, id)
        invokedPresentParametersList.append((navigationController, id))
    }
}
