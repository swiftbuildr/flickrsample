//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol ListView: class {
    var viewState: ViewState<ListViewModel> { get set }
}

