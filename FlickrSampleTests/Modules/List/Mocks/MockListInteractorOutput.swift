//
// Created by Samuel Ward on 21/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation
@testable import FlickrSample

class MockListInteractorOutput: ListInteractorOutput {

    var invokedDidGetList = false
    var invokedDidGetListCount = 0
    var invokedDidGetListParameters: (result: Result<ListEntity>, Void)?
    var invokedDidGetListParametersList = [(result: Result < ListEntity>, Void)]()

    func didGetList(result: Result<ListEntity>) {

        invokedDidGetList = true
        invokedDidGetListCount += 1
        invokedDidGetListParameters = (result, ())
        invokedDidGetListParametersList.append((result, ()))
    }
}
