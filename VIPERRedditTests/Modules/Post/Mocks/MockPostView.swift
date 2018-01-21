//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import VIPERReddit

class MockPostView: PostView {

    var invokedStateSetter = false
    var invokedStateSetterCount = 0
    var invokedState: ViewState<PostViewModel>?
    var invokedStateList = [ViewState<PostViewModel>]()
    var invokedStateGetter = false
    var invokedStateGetterCount = 0
    var stubbedState: ViewState<PostViewModel>!
    var state: ViewState<PostViewModel> {
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
