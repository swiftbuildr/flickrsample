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
}
