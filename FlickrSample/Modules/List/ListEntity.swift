//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

enum MediaURL {
    case m(URL)
}

struct ListEntity {

    let title: String
    let listItems: [ListItem]

    struct ListItem {
        let author_id: String
        let title: String
        let imageURL: URL
        let descriptionText: String
        let author: String
        let dateTaken: Date
    }
}

