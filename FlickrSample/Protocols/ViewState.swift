//
// Created by Samuel Ward on 07/01/2018.
// Copyright (c) 2018 swiftbuildr. All rights reserved.
//

import Foundation

enum ViewState<T> {
    case loaded(viewModel: T)
    case loading
    case empty
    case error
}

extension ViewState {
    
    var loadedViewModel: T? {
        
        guard case .loaded(let viewModel) = self else { return nil }
        return viewModel
    }

    var isLoading: Bool {

        if case .loading = self {
            return true
        }

        return false
    }
    var isEmpty: Bool {

        if case .empty = self {
            return true
        }

        return false
    }
    var isError: Bool {

        if case .error = self {
            return true
        }

        return false
    }
}
