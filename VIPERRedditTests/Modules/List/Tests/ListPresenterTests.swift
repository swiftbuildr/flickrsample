//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import XCTest
@testable import VIPERReddit

class ListPresenterTests: XCTestCase {

    var listPresenter: ListPresenter!

    private var mockListView: MockListView!
    private var mockListWireframeInput: MockListWireframeInput!
    private var mockListInteractorInput: MockListInteractorInput!

    override func setUp() {

        super.setUp()

        mockListView = MockListView()
        mockListWireframeInput = MockListWireframeInput()
        mockListInteractorInput = MockListInteractorInput()

        listPresenter = ListPresenter(view: mockListView,
                                      wireframe: mockListWireframeInput,
                                      interactor: mockListInteractorInput)
    }

    override func tearDown() {

        listPresenter = nil
        mockListView = nil
        mockListWireframeInput = nil
        mockListInteractorInput = nil
        super.tearDown()
    }

    // MARK: - viewDidLoad

    func test_viewDidLoad_shouldTriggerReload() {

        listPresenter.viewDidLoad()

        XCTAssert(mockListView.invokedViewStateList.first?.isLoading == true)
        XCTAssertEqual(mockListInteractorInput.invokedGetListCount, 1)
    }
}
