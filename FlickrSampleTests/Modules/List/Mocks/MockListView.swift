//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import FlickrSample

class MockListView: ListView {

    var invokedStateSetter = false
    var invokedStateSetterCount = 0
    var invokedState: ViewState<ListViewModel>?
    var invokedStateList = [ViewState<ListViewModel>]()
    var invokedStateGetter = false
    var invokedStateGetterCount = 0
    var stubbedState: ViewState<ListViewModel>!
    var state: ViewState<ListViewModel> {
        set {
            invokedStateSetter = true
            invokedStateSetterCount += 1
            invokedState = newValue
            invokedStateList.append(newValue)
        }
        get {
            invokedStateGetter = true
            invokedStateGetterCount += 1
            return stubbedState
        }
    }
}
