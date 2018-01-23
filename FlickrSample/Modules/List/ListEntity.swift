//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

enum MediaURL {
    case m(URL)
}

protocol ListEntity {
    
    var title: String { get }
    var link: URL { get }
    var items: [PublicFeed.PublicFeedItem] { get }
}

