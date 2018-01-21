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

    private let api: ListAPIInterface
    weak var output: PostInteractorOutput?

    init(api: ListAPIInterface) {

        self.api = api
    }

    func fetch(with context: Void, completion: @escaping (Result<PostEntity>) -> Void) {

        _ = api.request() {
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


