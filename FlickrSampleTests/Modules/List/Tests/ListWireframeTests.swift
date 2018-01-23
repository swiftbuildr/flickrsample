//
// Created by Samuel Ward on 20/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import XCTest
import UIKit
@testable import FlickrSample

class ListWireframeTests: XCTestCase {

    var listWireframe: ListWireframe!

    private var mockNavigationController: MockUINavigationController!
    private var mockListAPI: MockPublicFeedAPI!
    private var mockPostWireframeInput: MockPostWireframeInput!

    override func setUp() {

        super.setUp()

        mockNavigationController = MockUINavigationController()
        mockListAPI = MockPublicFeedAPI()
        mockPostWireframeInput = MockPostWireframeInput()

        listWireframe = ListWireframe(navigationController: mockNavigationController,
                                      api: mockListAPI,
                                      postWireframe: mockPostWireframeInput)
    }

    override func tearDown() {

        listWireframe = nil
        mockNavigationController = nil
        mockListAPI = nil
        mockPostWireframeInput = nil
        super.tearDown()
    }

    func test_present_shouldSetListViewControllerToRootOfNavigationController() {

        listWireframe.present()
        
        XCTAssertEqual(mockNavigationController.invokedViewControllersSetterCount, 1)
        XCTAssert(mockNavigationController.invokedViewControllers?.first is ListViewController)
    }

    func test_presentPost_shouldInvokePresentOnPostWireframeWithIdAndNavigationController() {

        listWireframe.present(with: Examples.API.publicFeedItem as PostEntity)

        XCTAssertEqual(mockPostWireframeInput.invokedPresentCount, 1)
        XCTAssertEqual(mockPostWireframeInput.invokedPresentParameters?.item.author_id, Examples.Constants.author_id)
        XCTAssertEqual(mockPostWireframeInput.invokedPresentParameters?.navigationController, mockNavigationController)
    }
}
