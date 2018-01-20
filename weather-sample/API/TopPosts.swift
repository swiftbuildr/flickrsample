//
// Created by Samuel Ward on 20/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

struct TopPosts: Codable {

    let kind: String
    let data: TopData

    struct TopData: Codable {

        let modhash: String
        let children: [Children]

        struct Children: Codable {

            let data: ChildrenData

            struct ChildrenData: Codable {
                let permalink: String
                let title: String
                let author: String
            }
        }
    }
}
