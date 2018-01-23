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
    private var mockListAPI: MockListAPI!
    private var mockPostWireframeInput: MockPostWireframeInput!

    override func setUp() {

        super.setUp()

        mockNavigationController = MockUINavigationController()
        mockListAPI = MockListAPI()
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

        listWireframe.presentPost(withId: "12345")

        XCTAssertEqual(mockPostWireframeInput.invokedPresentCount, 1)
        XCTAssertEqual(mockPostWireframeInput.invokedPresentParameters?.id, "12345")
        XCTAssertEqual(mockPostWireframeInput.invokedPresentParameters?.navigationController, mockNavigationController)
    }
}
