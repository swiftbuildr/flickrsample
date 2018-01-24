//
// Created by Samuel Ward on 24/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit
@testable import FlickrSample

class MockShareWireframeInput: ShareWireframeInput {
    
    var invokedPresent = false
    var invokedPresentCount = 0
    var invokedPresentParameters: (viewController: UIViewController, image: UIImage)?
    var invokedPresentParametersList = [(viewController: UIViewController, image: UIImage)]()

    func present(from viewController: UIViewController,
                 with image: UIImage) {

        invokedPresent = true
        invokedPresentCount += 1
        invokedPresentParameters = (viewController, image)
        invokedPresentParametersList.append((viewController, image))
    }
}
