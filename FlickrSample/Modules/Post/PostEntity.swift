//
// Created by Samuel Ward on 20/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

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

