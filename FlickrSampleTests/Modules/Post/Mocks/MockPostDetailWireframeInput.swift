//
// Created by Samuel Ward on 20/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit
@testable import FlickrSample

class MockPostWireframeInput: PostWireframeInput {

    var invokedPresent = false
    var invokedPresentCount = 0
    var invokedPresentParameters: (navigationController: UINavigationController, item: PostEntity)?
    var invokedPresentParametersList = [(navigationController: UINavigationController,
                                                item: PostEntity)]()

    func present(from navigationController: UINavigationController,
                 with item: PostEntity) {

        invokedPresent = true
        invokedPresentCount += 1
        invokedPresentParameters = (navigationController, item)
        invokedPresentParametersList.append((navigationController, item))
    }

    var invokedPresentShare = false
    var invokedPresentShareCount = 0
    var invokedPresentShareParameters: (image: UIImage, Void)?
    var invokedPresentShareParametersList = [(image: UIImage, Void)]()

    func presentShare(with image: UIImage) {

        invokedPresentShare = true
        invokedPresentShareCount += 1
        invokedPresentShareParameters = (image, ())
        invokedPresentShareParametersList.append((image, ()))
    }
}
