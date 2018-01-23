//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

class ListViewModelFactory {

    private let listEntity: ListEntity
    private let presentItemWithId: (String) -> Void

    init(listEntity: ListEntity,
         presentItemWithId: @escaping (String) -> Void) {

        self.listEntity = listEntity
        self.presentItemWithId = presentItemWithId
    }

    func create() -> ListViewModel {

        let listRows = listEntity.listItems.map(transformToRow)
        return ListViewModel(rows: listRows)
    }

    private func transformToRow(listItem: ListEntity.ListItem) -> ListViewModel.ListRow {

        return ListViewModel.ListRow(title: listItem.title,
                                     imageURL: listItem.imageURL,
                                     author: listItem.author,
                                     command: BlockCommand { self.presentItemWithId(listItem.author_id) })
    }
}
