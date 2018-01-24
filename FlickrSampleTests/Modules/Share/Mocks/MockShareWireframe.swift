//
// Created by Samuel Ward on 24/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit
@testable import FlickrSample

class MockShareWireframeInput: ShareWireframeInput {

    var invokedPresent = false
    var invokedPresentCount = 0
    var invokedPresentParameters: (navigationController: UINavigationController, context: ShareWireframeContext)?
    var invokedPresentParametersList = [(navigationController: UINavigationController,
                                                context: ShareWireframeContext)]()

    func present(from navigationController: UINavigationController,
                 with context: ShareWireframeContext) {

        invokedPresent = true
        invokedPresentCount += 1
        invokedPresentParameters = (navigationController, context)
        invokedPresentParametersList.append((navigationController, context))
    }
}
