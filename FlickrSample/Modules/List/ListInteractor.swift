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

    private let api: PublicFeedRetriever
    weak var output: ListInteractorOutput?

    init(api: PublicFeedRetriever) {

        self.api = api
    }

    func getList() {

        fetch { result in self.output?.didGetList(result: result) }
    }

    func fetch(completion: @escaping (Result<ListEntity>) -> Void) {

        api.retrieve() {
            result in

            switch result {
                case .success(let data):
                    completion(.success(data))
                case .failure(let error):
                    completion(.failure(error))
            }
        }
    }
}

