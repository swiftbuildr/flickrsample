//
// Created by Samuel Ward on 23/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

enum Errors {

    static let jsonParsingFailed = NSError(domain: "JSON Parsing failed", code: 1, userInfo: nil)
    static let noData = NSError(domain: "No data received", code: 2, userInfo: nil)
    static var noMatchingItemFound = NSError(domain: "No matching item", code: 3, userInfo: nil)
}
