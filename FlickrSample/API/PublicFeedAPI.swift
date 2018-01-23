//
// Created by Samuel Ward on 23/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol PublicFeedAPI {
    func makeRequest(_ completion: @escaping (Result<PublicFeed>) -> Void)
}
