//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import VIPERReddit

class MockListView: ListView {

    var invokedViewStateSetter = false
    var invokedViewStateSetterCount = 0
    var invokedViewState: ViewState<ListViewModel>?
    var invokedViewStateList = [ViewState<ListViewModel>]()
    var invokedViewStateGetter = false
    var invokedViewStateGetterCount = 0
    var stubbedViewState: ViewState<ListViewModel>!
    var viewState: ViewState<ListViewModel> {
        set {
            invokedViewStateSetter = true
            invokedViewStateSetterCount += 1
            invokedViewState = newValue
            invokedViewStateList.append(newValue)
        }
        get {
            invokedViewStateGetter = true
            invokedViewStateGetterCount += 1
            return stubbedViewState
        }
    }
}
