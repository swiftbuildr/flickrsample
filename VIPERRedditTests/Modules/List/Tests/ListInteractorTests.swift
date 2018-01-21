//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import XCTest
@testable import VIPERReddit

class ListInteractorTests: XCTestCase {

    var listInteractor: ListInteractor!

    private var mockListAPI: MockListAPI!
    private var mockListInteractorOutput: MockListInteractorOutput!

    override func setUp() {

        super.setUp()
        mockListAPI = MockListAPI()
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
        XCTAssertEqual(mockListAPI.invokedRequestCount, 1)
    }

    func test_getList_shouldReturnEntityViaOutput_whenSuccess() {

        mockListAPI.stubbedRequestCompletionResult = (.success(Examples.API.topPosts), ())

        listInteractor.getList()

        XCTAssertEqual(mockListInteractorOutput.invokedDidGetListCount, 1)

        let result = mockListInteractorOutput.invokedDidGetListParameters?.0
        XCTAssertNotNil(result?.successfulResult)
        XCTAssertEqual(result?.successfulResult?.listItems.first?.id,
                       Examples.API.topData.children.first?.data.id)
        XCTAssertNil(result?.failureResult)
    }

    func test_getList_shouldReturnErrorViaOutput_whenFailure() {

        mockListAPI.stubbedRequestCompletionResult = (.failure(Examples.error), ())

        listInteractor.getList()

        XCTAssertEqual(mockListInteractorOutput.invokedDidGetListCount, 1)

        let result = mockListInteractorOutput.invokedDidGetListParameters?.0
        XCTAssertNotNil(result?.failureResult)
        XCTAssertNil(result?.successfulResult)
    }

    struct Examples {

        struct API {

            static let topPosts = TopPosts(kind: "kind",
                                           data: API.topData)

            static let topData = TopPosts.TopData(modhash: "modHash",
                                                  children: [TopPosts.TopData.Children(
                                                          data: .init(permalink: "permalink",
                                                                      title: "title",
                                                                      author: "author",
                                                                      id: "1234",
                                                                      url: URL(string: "http://www.google.com"),
                                                                      subreddit: "/r/funny"))])
        }


        static let error = NSError(domain: "", code: 9, userInfo: nil)
    }
}
