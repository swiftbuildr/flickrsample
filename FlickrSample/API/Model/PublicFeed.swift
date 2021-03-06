//
// Created by Samuel Ward on 20/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

struct Media: Codable {

    let m: URL
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
