//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import XCTest
@testable import FlickrSample

class PostWireframeTests: XCTestCase {

    var wireframe: PostWireframe!

    private var mockListAPI: MockPublicFeedAPI!
    private var mockNavigationController: MockUINavigationController!
    private var mockShareWireframeInput: MockShareWireframeInput!

    override func setUp() {

        super.setUp()

        mockListAPI = MockPublicFeedAPI()
        mockNavigationController = MockUINavigationController()
        mockShareWireframeInput = MockShareWireframeInput()

        wireframe = PostWireframe(shareWireframeInput: mockShareWireframeInput)
    }

    override func tearDown() {

        wireframe = nil
        mockListAPI = nil
        mockNavigationController = nil
        mockShareWireframeInput = nil
        super.tearDown()
    }

    // MARK: - present

    func test_present_shouldPushPostViewControllerOnToNavigationController() {

        wireframe.present(from: mockNavigationController, with: Examples.API.publicFeedItem as PostEntity)

        XCTAssertEqual(mockNavigationController.invokedPushViewControllerCount, 1)
        XCTAssert(mockNavigationController.invokedPushViewControllerParameters?.viewController is PostViewController)
    }
}
