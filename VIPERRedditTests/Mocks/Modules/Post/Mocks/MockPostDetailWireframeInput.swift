//
// Created by Samuel Ward on 20/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import VIPERReddit

class MockPostWireframeInput: PostWireframeInput {

    var invokedPresent = false
    var invokedPresentCount = 0
    var invokedPresentParameters: (navigationController: UINavigationController, Void)?
    var invokedPresentParametersList = [(navigationController: UINavigationController, Void)]()

    func present(from navigationController: UINavigationController) {

        invokedPresent = true
        invokedPresentCount += 1
        invokedPresentParameters = (navigationController, ())
        invokedPresentParametersList.append((navigationController, ()))
    }
}
