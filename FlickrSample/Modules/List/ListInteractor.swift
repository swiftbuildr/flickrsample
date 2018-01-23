//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

// TODO: Refactor this to be shared across all interactors used for network requests
protocol ListInteractorInput {
    func getList()
}

protocol ListInteractorOutput: class {
    func didGetList(result: Result<ListEntity>)
}

class ListInteractor: ListInteractorInput {

    private let api: PublicFeedAPI
    weak var output: ListInteractorOutput?

    init(api: PublicFeedAPI) {

        self.api = api
    }

    func getList() {

        fetch { result in self.output?.didGetList(result: result) }
    }

    func fetch(completion: @escaping (Result<ListEntity>) -> Void) {

        api.makeRequest() {
            result in

            switch result {
                case .success(let data):

                    let listItems: [ListEntity.ListItem] = data.items.map {

                        ListEntity.ListItem(author_id: $0.author_id,
                                            title: $0.title,
                                            imageURL: $0.media.m,
                                            descriptionText: $0.description,
                                            author: $0.author,
                                            dateTaken: $0.date_taken)
                    }

                    let entity = ListEntity(title: data.title,
                                            listItems: listItems)

                    completion(.success(entity))
                case .failure(let error):
                    completion(.failure(error))
            }
        }
    }
}

