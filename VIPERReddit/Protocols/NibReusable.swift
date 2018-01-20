//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

protocol Reusable: class {

    static var reuseIdentifier: String { get }
}

extension Reusable {

    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

typealias NibReusable = Reusable & NibLoadable

protocol NibLoadable: class {
    static var nib: UINib { get }
}

extension NibLoadable {
    static var nib: UINib {
        return UINib(nibName: String(describing: self),
                     bundle: Bundle(for: self))
    }
}

protocol NibReusableRegistration {
    func registerCell(_ nibReusable: NibReusable.Type)
    func registerHeaderFooter(_ nibReusable: NibReusable.Type)
}

// MARK: - UITableView
extension UITableView: NibReusableRegistration {

    func registerCell(_ nibReusable: NibReusable.Type) {

        register(nibReusable.nib, forCellReuseIdentifier: nibReusable.reuseIdentifier)
    }

    func registerHeaderFooter(_ nibReusable: NibReusable.Type) {

        register(nibReusable.nib, forHeaderFooterViewReuseIdentifier: nibReusable.reuseIdentifier)
    }
}

extension UITableView {

    func dequeueReusableCell<T: NibReusable>(_ nibReusable: T.Type) -> T? {
        return dequeueReusableCell(withIdentifier: nibReusable.reuseIdentifier) as? T
    }

    func dequeueReusableHeaderFooterView<T: NibReusable>(_ nibReusable: T.Type) -> T? {

        return dequeueReusableHeaderFooterView(withIdentifier: nibReusable.reuseIdentifier) as? T
    }
}