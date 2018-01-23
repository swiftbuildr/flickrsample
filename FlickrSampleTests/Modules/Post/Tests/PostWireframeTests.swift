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

    override func setUp() {

        super.setUp()

        mockListAPI = MockPublicFeedAPI()
        mockNavigationController = MockUINavigationController()

        wireframe = PostWireframe(listAPI: mockListAPI)
    }

    override func tearDown() {

        wireframe = nil
        mockListAPI = nil
        mockNavigationController = nil
        super.tearDown()
    }

    // MARK: - present

    func test_present_shouldPushPostViewControllerOnToNavigationController() {

        wireframe.present(from: mockNavigationController, withId: "12345abc")

        XCTAssertEqual(mockNavigationController.invokedPushViewControllerCount, 1)
        XCTAssert(mockNavigationController.invokedPushViewControllerParameters?.viewController is PostViewController)
    }
}
