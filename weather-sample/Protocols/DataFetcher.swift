//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol DataFetcher {

    associatedtype Context
    associatedtype Entity

    func fetch(with context: Context,
               completion: @escaping (Result<Entity>) -> Void)
}