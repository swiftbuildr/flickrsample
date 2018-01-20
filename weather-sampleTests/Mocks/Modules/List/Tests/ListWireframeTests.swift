//
// Created by Samuel Ward on 20/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import XCTest
@testable import weather_sample

class ListWireframeTests: XCTestCase {

    var listWireframe: ListWireframe!

    private var mockNavigationController: MockUINavigationController!
    private var mockListAPI: MockListAPI!
    private var mockWeatherDetailWireframeInput: MockWeatherDetailWireframeInput!

    override func setUp() {

        super.setUp()
        listWireframe = ListWireframe(navigationController: mockNavigationController,
                                      api: mockListAPI,
                                      weatherDetailWireframe: mockWeatherDetailWireframeInput)
    }

    // MARK: -

    func test__should() {

        listWireframe.()
        XCTAssert
    }
}
