//
// Created by Samuel Ward on 20/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

struct Media: Codable {

    let m: URL
}

protocol ListEntity {

    var title: String { get }
    var link: URL { get }
    var items: [PublicFeed.PublicFeedItem] { get }
}

protocol PostEntity {
    var title: String { get }
    var link: URL { get }
    var media: Media { get }
    var date_taken: Date { get }
    var description: String { get }
    var published: Date { get }
    var author: String { get }
    var author_id: String { get }
    var tags: String { get }
}

struct PublicFeed: Codable, ListEntity {

    let title: String
    let link: URL
    let items: [PublicFeedItem]

    struct PublicFeedItem: Codable, PostEntity {

        let title: String
        let link: URL
        let media: Media
        let date_taken: Date
        let description: String
        let published: Date
        let author: String
        let author_id: String
        let tags: String
    }
}
