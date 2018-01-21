//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

enum Result<T> {
    case success(T)
    case failure(NSError)
}

extension Result {

    var successfulResult: T? {

        if case .success(let data) = self {
            return data
        }

        return nil
    }

    var failureResult: NSError? {

        if case .failure(let error) = self {
            return error
        }

        return nil
    }
}

