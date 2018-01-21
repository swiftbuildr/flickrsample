//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

struct ListEntity {

    struct ListItem {
        let id: String
        let title: String
        let descriptionText: String
        let subreddit: String
        let url: URL?
    }
    
    let listItems: [ListItem]
}

