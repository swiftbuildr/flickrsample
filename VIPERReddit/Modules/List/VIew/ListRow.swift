//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation


struct ListViewModel {
    
    let rows: [ListRow]
    
    struct ListRow: CommandRow {
        let title: String
        let detail: String
        let command: Command?
        let reuseIdentifier = ListTableViewCell.reuseIdentifier
    }
}
