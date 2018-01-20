//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol Command {
    func execute()
}

class BlockCommand: Command {

    private let invocation: () -> Void

    init(invocation: @escaping () -> Void) {

        self.invocation = invocation
    }

    func execute() {

        invocation()
    }
}
