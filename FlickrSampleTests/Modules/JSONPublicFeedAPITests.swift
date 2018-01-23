//
// Created by Samuel Ward on 23/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

import XCTest
@testable import FlickrSample

class JSONPublicFeedAPITests: XCTestCase {

    var jsonPublicFeedAPI: JSONPublicFeedAPI!

    private var mockURLSession: MockURLSession!

    override func setUp() {

        super.setUp()

        mockURLSession = MockURLSession()
        jsonPublicFeedAPI = JSONPublicFeedAPI(urlSession: mockURLSession)
    }

    // MARK: - makeRequest

    func test_makeRequest_shouldCompleteWithModelObject_whenSuccessful() {
        
        let path = Bundle(for: type(of: self)).url(forResource: "list", withExtension: "json")!
        let data = try! Data(contentsOf: path)

        mockURLSession.stubbedData = data
        mockURLSession.stubbedURLResponse = URLResponse()

        var savedResult: Result<PublicFeed>?

        jsonPublicFeedAPI.makeRequest { result in savedResult = result }

        XCTAssertNotNil(savedResult?.successfulResult)
        XCTAssertNil(savedResult?.failureResult)
    }
    
    func test_makeRequest_shouldCompleteWithErrorObject_whenFailureByInvalidData() {
        
        mockURLSession.stubbedData = Data(base64Encoded: "sadsda")
        
        var savedResult: Result<PublicFeed>?
        
        jsonPublicFeedAPI.makeRequest { result in savedResult = result }
        
        XCTAssertEqual(savedResult?.failureResult?.code, Errors.noData.code)
        XCTAssertNil(savedResult?.successfulResult)
    }
    
    // TODO: finish this
    
    func TOOD_test_makeRequest_shouldCompleteWithErrorObject_whenFailure() {
        
        var savedResult: Result<PublicFeed>?
        
        jsonPublicFeedAPI.makeRequest { result in savedResult = result }
        
        XCTAssertEqual(savedResult?.failureResult?.code, Errors.jsonParsingFailed.code)
        XCTAssertNil(savedResult?.successfulResult)
    }
}
