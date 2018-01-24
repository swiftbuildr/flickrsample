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

    // MARK: - didTapShare

    func test_didTapShare_shouldInvokeShareView() {

        postPresenter.cachedImage = UIImage()
        postPresenter.didTapShare()
        XCTAssertEqual(mockPostWireframeInput.invokedPresentShareCount, 1)
    }

    func test_didTapShare_shouldNotInvokeShareView_whenThereIsNoCachedImage() {

        postPresenter.cachedImage = nil
        postPresenter.didTapShare()
        XCTAssertEqual(mockPostWireframeInput.invokedPresentShareCount, 0)
    }

    func test_finishedRetrieving_shouldUpdateViewState_whenSuccessfullyFetchedEntity() {

        postPresenter.finishedRetrieving(result: .success(Examples.API.publicFeedItem as PostEntity))
        XCTAssertNotNil(mockPostView.invokedState?.loadedViewModel)
        XCTAssert(mockPostView.invokedState?.isError == false)
    }

    func test_finishedRetrieving_shouldUpdateViewState_whenUnsuccessfullyFetchedEntity() {

        postPresenter.finishedRetrieving(result: .failure(Examples.error))
        XCTAssert(mockPostView.invokedState?.isError == true)
    }
}
