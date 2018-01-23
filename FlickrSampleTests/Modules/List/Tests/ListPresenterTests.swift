//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import XCTest
@testable import FlickrSample

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

        XCTAssert(mockListView.invokedStateList.first?.isLoading == true)
        XCTAssertEqual(mockListInteractorInput.invokedGetListCount, 1)
    }

    // MARK: - didGetList

    func test_didGetList_shouldSetViewStateToLoadedWithViewModel_whenSuccess() {

        let listEntity = ListEntity(listItems: [ListEntity.ListItem(id: "123",
                                                                    title: "Test title",
                                                                    descriptionText: "",
                                                                    subreddit: "",
                                                                    url: nil)])
        listPresenter.didGetList(result: .success(listEntity))

        XCTAssertEqual(mockListView.invokedStateList.first?.loadedViewModel?.rows.first?.title,
                       "Test title")
    }
    
    func test_didGetList_shouldSetViewStateToLoadedWithViewModel_whenFailure() {
        
        listPresenter.didGetList(result: .failure(NSError(domain: "", code: 1, userInfo: nil)))
        
        XCTAssert(mockListView.invokedStateList.first?.isError == true)
    }
}
