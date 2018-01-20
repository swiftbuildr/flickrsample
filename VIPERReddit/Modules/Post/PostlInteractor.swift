//
// Created by Samuel Ward on 19/01/2018.
// Copyright (c) 2018 Swiftbuildr Ltd. All rights reserved.
//

import Foundation

protocol WeatherDetailInteractorInput {
}

protocol PostInteractorOutput: class {
}

class PostInteractor: DataFetcher, WeatherDetailInteractorInput {

    private let api: ListAPI
    weak var output: PostInteractorOutput?

    init(api: ListAPI) {

        self.api = api
    }

    func fetch(with context: Void, completion: @escaping (Result<PostEntity>) -> Void) {

        _ = api.get() {
            result in

            DispatchQueue.main.async {

                switch result {
                    case .success(let data):

                        let entity = PostEntity()
                        completion(.success(entity))
                    case .failure(_):
                        completion(.failure(NSError()))
                }
            }
        }
    }
}


