//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import XCTest
@testable import FlickrSample

class PostPresenterTests: XCTestCase {

    var postPresenter: PostPresenter!

    private var mockPostView: MockPostView!
    private var mockPostWireframeInput: MockPostWireframeInput!
    private var mockPostInteractorInput: MockPostInteractorInput!

    override func setUp() {

        super.setUp()
        
        mockPostView = MockPostView()
        mockPostWireframeInput = MockPostWireframeInput()
        mockPostInteractorInput = MockPostInteractorInput()
        
        postPresenter = PostPresenter(view: mockPostView,
                                      wireframe: mockPostWireframeInput,
                                      interactor: mockPostInteractorInput)
    }

    override func tearDown() {

        postPresenter = nil
        mockPostView = nil
        mockPostWireframeInput = nil
        mockPostInteractorInput = nil
        super.tearDown()
    }

    // MARK: - viewDidLoad

    func test_viewDidLoad_shouldInvokeRetrieveEntity() {

        postPresenter.viewDidLoad()
        XCTAssertEqual(mockPostInteractorInput.invokedRetrieveEntityCount, 1)
    }
}
