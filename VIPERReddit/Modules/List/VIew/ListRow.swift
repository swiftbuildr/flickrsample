//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation


struct ListViewModel {

    let rows: [ListRow]

    struct ListRow: CommandRow {

        let reuseIdentifier = ListTableViewCell.reuseIdentifier

        let title: String
        let detail: String
        let subreddit: String
        let urlType: URLType

        let command: Command?

        init(title: String,
             detail: String,
             subreddit: String,
             url: URL?,
             command: Command?) {

            self.title = title
            self.detail = detail
            self.subreddit = subreddit
            self.command = command
            self.urlType = URLType(url: url)
        }
    }
}
