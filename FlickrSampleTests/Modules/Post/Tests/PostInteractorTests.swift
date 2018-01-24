//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import XCTest
@testable import FlickrSample

class PostInteractorTests: XCTestCase {

    var postInteractor: PostInteractor!

    var mockPostInteractorOutput: MockPostInteractorOutput!

    override func setUp() {

        super.setUp()

        mockPostInteractorOutput = MockPostInteractorOutput()
        postInteractor = PostInteractor(postEntity: Examples.API.publicFeedItem as PostEntity)

        postInteractor.output = mockPostInteractorOutput

    }

    override func tearDown() {

        postInteractor = nil
        mockPostInteractorOutput = nil
        super.tearDown()
    }

    // MARK: -
    func test_retrieve_shouldGetPostEntity() {

        postInteractor.retrieveEntity()
        XCTAssert(mockPostInteractorOutput.invokedFinishedRetrieving)
    }
}
