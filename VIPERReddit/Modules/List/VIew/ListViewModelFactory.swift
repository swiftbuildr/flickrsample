//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

class ListViewModelFactory {

    private let listEntity: ListEntity
    private let presentPostWithId: (String) -> Void

    init(listEntity: ListEntity,
         presentPostWithId: @escaping (String) -> Void) {

        self.listEntity = listEntity
        self.presentPostWithId = presentPostWithId
    }

    func create() -> ListViewModel {

        let listRows = listEntity.listItems.map(transformToRow)
        return ListViewModel(rows: listRows)
    }

    private func transformToRow(listItem: ListEntity.ListItem) -> ListViewModel.ListRow {

        return ListViewModel.ListRow(title: listItem.title,
                                     detail: listItem.descriptionText,
                                     subreddit: listItem.subreddit,
                                     url: listItem.url,
                                     command: BlockCommand { self.presentPostWithId(listItem.id) })
    }
}
