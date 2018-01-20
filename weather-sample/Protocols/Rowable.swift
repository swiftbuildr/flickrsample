//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol Rowable {

    var reuseIdentifier: String { get }
}

protocol CommandRow: Rowable {

    var command: Command? { get }
}

protocol Sectionable {

    var reuseIdentifier: String? { get }
    var rows: [Rowable] { get }
}
