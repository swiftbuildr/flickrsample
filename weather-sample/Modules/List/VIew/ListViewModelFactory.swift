//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

class ListViewModelFactory {

    private let listEntity: ListEntity

    init(listEntity: ListEntity) {
        self.listEntity = listEntity
    }

    func create() -> ListViewModel {

        let listRows = listEntity.listItems.map(transformToRow)
        return ListViewModel(rows: listRows)
    }

    private func transformToRow(listItem: ListEntity.ListItem) -> ListRow {
        return ListRow(title: listItem.title,
                       detail: "",
                       command: BlockCommand { })
    }
}
