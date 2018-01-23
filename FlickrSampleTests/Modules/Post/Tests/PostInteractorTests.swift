//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import XCTest
@testable import FlickrSample

class PostInteractorTests: XCTestCase {

    var postInteractor: PostInteractor!

    private var mockListAPI: MockListAPI!

    override func setUp() {

        super.setUp()

        mockListAPI = MockListAPI()
        postInteractor = PostInteractor(api: mockListAPI,
                                        postId: "12345")
    }

    // MARK: -
}
