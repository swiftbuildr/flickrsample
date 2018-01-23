//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

class ListViewModelFactory {

    private let listEntity: ListEntity
    private let presentItemWithId: (PostEntity) -> Void
    private lazy var dateFormatter: DateFormatter = {

        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        return dateFormatter
    }()

    init(listEntity: ListEntity,
         presentItemWithId: @escaping (PostEntity) -> Void) {

        self.listEntity = listEntity
        self.presentItemWithId = presentItemWithId
    }

    func create() -> ListViewModel {

        let listRows = listEntity.items.map(transformToRow)
        return ListViewModel(rows: listRows)
    }

    private func transformToRow(postEntity: PostEntity) -> ListViewModel.ListRow {

        let authorAndDate = "\(postEntity.author) @ \(dateFormatter.string(from: postEntity.date_taken))"

        return ListViewModel.ListRow(title: postEntity.title,
                                     imageURL: postEntity.media.m,
                                     authorAndDate: authorAndDate,
                                     command: BlockCommand { self.presentItemWithId(postEntity) })
    }
}
