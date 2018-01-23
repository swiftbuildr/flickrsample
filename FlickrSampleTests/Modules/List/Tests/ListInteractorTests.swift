//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import XCTest
@testable import FlickrSample

class ListInteractorTests: XCTestCase {

    var listInteractor: ListInteractor!

    private var mockListAPI: MockPublicFeedAPI!
    private var mockListInteractorOutput: MockListInteractorOutput!

    override func setUp() {

        super.setUp()
        mockListAPI = MockPublicFeedAPI()
        mockListInteractorOutput = MockListInteractorOutput()

        listInteractor = ListInteractor(api: mockListAPI)
        listInteractor.output = mockListInteractorOutput
    }

    override func tearDown() {

        listInteractor = nil
        mockListAPI = nil
        mockListInteractorOutput = nil
        super.tearDown()
    }

    // MARK: - geList

    func test_getList_shouldInvokeRequestOnAPI() {

        listInteractor.getList()
        XCTAssertEqual(mockListAPI.invokedMakeRequestCount, 1)
    }

    func test_getList_shouldReturnEntityViaOutput_whenSuccess() {

        mockListAPI.stubbedMakeRequestCompletionResult = (.success(Examples.API.publicFeed), ())

        listInteractor.getList()

        XCTAssertEqual(mockListInteractorOutput.invokedDidGetListCount, 1)

        let result = mockListInteractorOutput.invokedDidGetListParameters?.0
        XCTAssertNotNil(result?.successfulResult)
        XCTAssertEqual(result?.successfulResult?.listItems.first?.author_id,
                       Examples.API.publicFeedItem.author_id)
        XCTAssertNil(result?.failureResult)
    }

    func test_getList_shouldReturnErrorViaOutput_whenFailure() {

        mockListAPI.stubbedMakeRequestCompletionResult = (.failure(Examples.error), ())

        listInteractor.getList()

        XCTAssertEqual(mockListInteractorOutput.invokedDidGetListCount, 1)

        let result = mockListInteractorOutput.invokedDidGetListParameters?.0
        XCTAssertNotNil(result?.failureResult)
        XCTAssertNil(result?.successfulResult)
    }
}
